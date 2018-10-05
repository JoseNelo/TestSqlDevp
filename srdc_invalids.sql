Rem srdc_invalids.sql
Rem
Rem Copyright (c) 2006, 2015 Oracle. All rights reserved.
Rem
Rem    NAME
Rem      srdc_invalids.sql - script to collect diagnostic details related to invalid objects and dictionary components
Rem
Rem    NOTES
Rem      * This script collects the data related to the invalid data dictionary
Rem		   and registry components. This collects the details regarding the overall invalid 
Rem		   objects in the databse and the editions. 
Rem		 * The script creates a spool output. Upload it to the Service Request
Rem      * This script contains some checks which might not be relevant for
Rem        all versions.
Rem      * This script will *not* update any data.
Rem      * This script must be run using SQL*PLUS.
Rem      * You must be connected AS SYSDBA to run this script.
Rem
Rem
Rem
Rem    MODIFIED   (MM/DD/YY)
Rem    slabraha   03/05/18 - created the script
Rem
Rem
Rem
Rem
define SRDCNAME='DB_INVALIDS'
set pagesize 200 verify off sqlprompt "" term off entmap off echo off
set markup html on spool on
COLUMN SRDCSPOOLNAME NOPRINT NEW_VALUE SRDCSPOOLNAME
select 'SRDC_'||upper('&&SRDCNAME')||'_'||upper(instance_name)||'_'|| to_char(sysdate,'YYYYMMDD_HH24MISS') SRDCSPOOLNAME from v$instance;
spool &&SRDCSPOOLNAME..htm
select 'Diagnostic-Name' "DIAGNOSTIC_NAME", '&&SRDCNAME' "REPORT_INFO" from dual
union all
select 'Time' , to_char(systimestamp, 'YYYY-MM-DD HH24MISS TZHTZM' ) from dual
union all
select 'Machine' , host_name from v$instance
union all
select 'Version',version from v$instance
union all
select 'DBName',name from v$database
union all
select 'Instance',instance_name from v$instance
/
set echo on
set serveroutput on
alter session set nls_date_format = 'DD-MON-YYYY HH24:MI:SS'
/
SELECT 'SRDC_INVALIDS' "CHECK_NAME",sysdate from dual
/
SELECT 'Registry_Status' "CHECK_NAME",comp_id,comp_name,version,status from dba_registry
/
select * from dba_registry
/
select  'Registry_History' "CHECK_NAME",action_time,action,namespace,version,id,comments from DBA_REGISTRY_HISTORY ORDER by action_time
/
SELECT 'Dictionary_Status' "CHECK_NAME",object_name,object_type from dba_objects where status!='VALID' and owner in ('SYS','SYSTEM')
/
SELECT 'Invalid_Objects' "CHECK_NAME",owner,count(*) from dba_objects where status!='VALID' group by owner
/
select 'Timestamp_Mismatch' "CHECK_NAME",do.obj# d_obj,do.name d_name, do.type# d_type,
po.obj# p_obj,po.name p_name,
to_char(p_timestamp,'DD-MON-YYYY HH24:MI:SS') "P_Timestamp",
to_char(po.stime ,'DD-MON-YYYY HH24:MI:SS') "STIME",
decode(sign(po.stime-p_timestamp),0,'SAME','*DIFFER*') X
from sys.obj$ do, sys.dependency$ d, sys.obj$ po
where P_OBJ#=po.obj#(+)
and D_OBJ#=do.obj#
and do.status=1 /*dependent is valid*/
and po.status=1 /*parent is valid*/
and po.stime!=p_timestamp /*parent timestamp not match*/
order by 2,1
/
select 'Default_Edition' "CHECK_NAME",property_value from database_properties where property_name='DEFAULT_EDITION'
/
select * from dba_editions order by edition_name
/
select obj#, dataobj#, name, type#, status, owner#, spare3 from sys.obj$ order by spare3, owner#
/
select user#, name, ext_username, spare2, type# from sys.user$ order by user#
/
select u.user#, u.ext_username, bu.user#, o.name edition_name
  from sys.user$ u, sys.obj$ o, sys.user$ bu
  where u.type# = 2 and o.obj# = u.spare2
      and u.ext_username = bu.name
  order by 2,1
  /
select obj#, p_obj# , flags from edition$ order by obj#
	/
select e.obj#, o.name, o.type# from edition$ e, obj$ o where e.obj# = o.obj# order by e.obj#
	/
Rem===========================================================================================================================================
spool off
set markup html off spool off
set sqlprompt "SQL> " term on  echo off
PROMPT
PROMPT
PROMPT REPORT GENERATED : &SRDCSPOOLNAME..htm
set verify on echo on
Rem===========================================================================================================================================
