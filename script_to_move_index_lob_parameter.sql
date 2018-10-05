SQL> set linesize 200
SQL> r
  1* select 'alter table  '||owner||'.'||table_name||' move lob ('||column_name||') store as (tablespace INIDEX01);' from dba_lobs where owner='PARAMETERS'

'ALTERTABLE'||OWNER||'.'||TABLE_NAME||'MOVELOB('||COLUMN_NAME||')STOREAS(TABLESPACEINIDEX01);'
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
alter table  PARAMETERS.DR$CTX_PAR_DIAG_IDX$I move lob (TOKEN_INFO) store as (tablespace INIDEX01);
alter table  PARAMETERS.DR$CTX_PAR_DIAG_IDX$R move lob (DATA) store as (tablespace INIDEX01);
alter table  PARAMETERS.DR$CTX_PAR_PROC_IDX$I move lob (TOKEN_INFO) store as (tablespace INIDEX01);
alter table  PARAMETERS.DR$CTX_PAR_PROC_IDX$R move lob (DATA) store as (tablespace INIDEX01);
alter table  PARAMETERS.DR$CTX_PAR_PROC_TYP_IDX$I move lob (TOKEN_INFO) store as (tablespace INIDEX01);
alter table  PARAMETERS.DR$CTX_PAR_PROC_TYP_IDX$R move lob (DATA) store as (tablespace INIDEX01);

6 rows selected.

SQL>
