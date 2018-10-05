#!/bin/bash
. /home/oracle/.bash_profile
NODO=`hostname -s`
NODO_LOWER=`echo $NODO|awk '{print tolower($1)}'`
FECHA=`date +%y%m%d_%H%M%S`
DBVERSION='12.1.0.2.0'
ORACLE_UNQNAME_LOWER=`echo $ORACLE_SID|awk '{print tolower($1)}'`
GRID_HOME=/u01/app/12.1.0/grid
LOGS=/home/oracle
ALERT_LOG_NAME=cluster_error.log
ALERT_LOG_NAME=REVISAR.LOG
ALERT_LOG=$LOGS/$ALERT_LOG_NAME
NINGUNA_FILA='ninguna fila seleccionada'
NINGUNA_FILA='no rows selected'
EXPORTS=$ORACLE_BASE/admin/$ORACLE_SID/dpdump
EXP_OK_MSG="successfully completed"
RMAN_LOGS=~/rmanlogs
RMAN_BACKUP_FINISH_MSG="Finished backup at"
RMAN_SCRIPT_FINISH_MSG="Recovery Manager complete."
FS_WARNING=47
echo;echo Buen dia !!!!    realizando revision general del servidor;echo
#if [ -f $ALERT_LOG ];then rm $ALERT_LOG;fi
echo ------------------------------------------------------ >$ALERT_LOG
echo $(date) >>$ALERT_LOG
echo >>$ALERT_LOG

cd $EXPORTS
STATUS=ok
if [ `ls *.log|wc -l` = 0 ];then STATUS=error0
else
LOGFILE=`ls -tr *.log|tail -1`
grep -q ^ORA-       *.log   ;if [ $? != 1 ];then STATUS=error1;fi
grep -q "$EXP_OK_MSG" $LOGFILE;if [ $? != 0 ];then STATUS=error2;fi
fi
if [ $STATUS != ok ];then echo Atencion: $STATUS Revisar los exports en $EXPORTS>>$ALERT_LOG;else echo ok exports;fi

cd $RMAN_LOGS
STATUS=ok
if [ `ls RMAN*.log|wc -l` = 0 ];then STATUS=No_lo_files_to_analyze
else
LOGFILE=`ls -tr RMAN*.log|tail -1`
#echo rman backup log: $RMAN_LOGS/$LOGFILE >> $ALERT_LOG
egrep -q "^RMAN-|^ORA-"             RMAN*.log   ;if [ $? != 1 ];then STATUS=ORA/RMAN_errors_in_some_log;fi
 grep -q "$RMAN_BACKUP_FINISH_MSG" $LOGFILE     ;if [ $? != 0 ];then STATUS=Backup_not_finished;fi
 grep -q "$RMAN_SCRIPT_FINISH_MSG" $LOGFILE     ;if [ $? != 0 ];then STATUS=Script_not_finished;fi
fi
if [ $STATUS != ok ];then echo Atencion: $STATUS Revisar los logs de respaldos RMAN en $RMAN_LOGS >>$ALERT_LOG;else echo ok RMAN respaldos;fi

ALERT_LOG_FILE=$ORACLE_BASE/diag/rdbms/$ORACLE_UNQNAME_LOWER/$ORACLE_SID/trace/alert_$ORACLE_SID.log
LOGFILE=$ALERT_LOG_FILE
grep -q ^ORA- $LOGFILE
if [ $? = 0 ];then 
echo Atencion: Revisar alert log $LOGFILE >> $ALERT_LOG
grep -B6 ^ORA- $LOGFILE | egrep '^ORA|2018' | tail -20 >> $ALERT_LOG
else 
echo ok Alert log
fi
#echo Alert log: $LOGFILE >> $ALERT_LOG

sqlplus / as sysdba << SQL > $LOGS/out.log
set lines 2000 trims on
select * from v\$database where NAME='$ORACLE_SID' and log_mode='ARCHIVELOG' and OPEN_MODE='READ WRITE';
SQL
cat $LOGS/out.log >> $LOGS/h_database.log
grep -q "$NINGUNA_FILA" $LOGS/out.log
if [ $? = 0 ];then echo Atencion: Revisar v_database >> $ALERT_LOG;else echo ok v_database;fi

sqlplus / as sysdba << SQL > $LOGS/out.log
set lines 2000 trims on
select * from v\$instance where STATUS='OPEN' and ARCHIVER='STARTED' and  log_switch_wait IS NULL and LOGINS='ALLOWED' and SHUTDOWN_PENDING='NO' and DATABASE_STATUS='ACTIVE' and ACTIVE_STATE='NORMAL' and BLOCKED='NO';
SQL
cat $LOGS/out.log >> $LOGS/h_instance.log
grep -q "$NINGUNA_FILA" $LOGS/out.log
if [ $? = 0 ];then echo Atencion: Revisar v_instance >> $ALERT_LOG;else echo ok v_instance;fi

sqlplus / as sysdba << SQL > $LOGS/out.log
SELECT name, total_mb/1024 total_gb, (total_mb - free_mb)/1024 used, free_mb/1024 free, ROUND((1- (free_mb / total_mb))*100, 2) pct_used, '%' FROM v\$asm_diskgroup order by PCT_USED;
SQL
cat $LOGS/out.log >> $LOGS/h_asm_diskgroup.log

sqlplus / as sysdba << SQL > $LOGS/out.log
SELECT  name, total_mb/1024 total_gb, (total_mb - free_mb)/1024 used, free_mb/1024 free, ROUND((1- (free_mb / total_mb))*100, 2) pct_used, '%'
FROM v\$asm_diskgroup WHERE ROUND((1- (free_mb / total_mb))*100, 2) >= 80 and (name <> 'GR_RESPALDOS' );
SQL
grep -q PCT_USED $LOGS/out.log
if [ $? = 0 ];then echo Atencion: Revisar espacio en los discos ASM >> $ALERT_LOG;else echo ok asm disk space;fi

sqlplus / as sysdba << SQL > $LOGS/out.log
select owner, object_type, status, object_name from dba_objects where status <> 'VALID';
SQL
cat $LOGS/out.log >> $LOGS/h_invalid_objects.log
grep -q "$NINGUNA_FILA" $LOGS/out.log
if [ $? = 0 ];then echo ok objetos de la base de datos;else echo Atencion: Revisar objetos de la base de datos >> $ALERT_LOG;fi

if [ `df|grep -v "Mounted on"|awk '{print substr($0,52,3)}'|sort -nr|head -1` -gt $FS_WARNING ];then echo algun filesystem sobre $FS_WARNING% >> $ALERT_LOG;else echo ok filesystem space;fi

sqlplus / as sysdba << SQL > $LOGS/out.log
set lines 2000 trims on
select * from v\$database_block_corruption;
SQL
cat $LOGS/out.log >> $LOGS/h_mix.log
grep -q "$NINGUNA_FILA" $LOGS/out.log
if [ $? = 0 ];then echo ok no database block corruption;else echo Atencion: Bloques corruptos en la base >> $ALERT_LOG;fi

LSNR_STAT_READY_MSG="status READY"
LOGFILE=$LOGS/out.log
ERROR_MSG=""
lsnrctl status > $LOGFILE;if [ $? != 0 ];then ERROR_MSG=$ERROR_MSG"Listener error, ";fi
grep -q "The command completed successfully" $LOGFILE;if [ $? != 0 ];then ERROR_MSG=$ERROR_MSG"no culmino correctamente";fi
if [ `grep "$LSNR_STAT_READY_MSG" $LOGFILE | wc -l` -lt 3 ];then ERROR_MSG=$ERROR_MSG"algun servicio no esta disponible";fi
if [ "$ERROR_MSG" != "" ];then echo Atencion: Revisar el listener: $ERROR_MSG | tee -a $ALERT_LOG;else echo ok listener;fi

cat $LOGS/out.log >> $LOGS/h_listener.log


LOGFILE=$(lsnrctl status|grep "Listener Log"|awk '{print $4}' )
#echo Listener log: $LOGFILE >> $ALERT_LOG
grep -q ^ORA- $LOGFILE
if [ $? = 0 ];then echo Atencion: Revisar los logs del listener >> $ALERT_LOG;grep ^ORA- $LOGFILE | sort -u >> $ALERT_LOG;else echo ok listener log;fi

echo $(date) >> $LOGS/h_grid.log
$GRID_HOME/bin/crsctl stat res -t              >> $LOGS/h_grid.log

NORMA="-rw-r-----."
PERMISOS=$(ls -l $ORACLE_HOME/network/admin/tnsnames.ora | grep tnsnames.ora | awk '{print $1 }')
if [ "$PERMISOS" != "$NORMA"  ];then echo Atencion: Los permisos no estan correctos;fi

# drwxr-xr-x. 3 oracle oinstall   59 Jul 18 12:06 admin

NORMA="drwxr-xr-x."
PERMISOS=$(ls -l $ORACLE_HOME/network/ | grep admin | awk '{print $1 }')
if [ "$PERMISOS" != "$NORMA"  ];then echo Atencion: Los permisos no estan correctos;fi

NORMA="drwxr-x---."
PERMISOS=$(ls -l $ORACLE_BASE/admin/$ORACLE_SID/ | grep dpdump | awk '{print $1 }')
if [ "$PERMISOS" != "$NORMA"  ];then echo Atencion: Los permisos no estan correctos;fi

RESPALDOS=/home/oracle/backups
ARCHIVO=$ORACLE_HOME/dbs/init$ORACLE_SID.ora
cp -p $ARCHIVO $RESPALDOS
ARCHIVO=$ORACLE_HOME/dbs/orapw$ORACLE_SID
cp -p $ARCHIVO $RESPALDOS
ARCHIVO=$ALERT_LOG_FILE
cp -p $ARCHIVO $RESPALDOS
ARCHIVO=$GRID_HOME/network/admin/listener.ora
cp -p $ARCHIVO $RESPALDOS
ARCHIVO=$GRID_HOME/network/admin/sqlnet.ora
cp -p $ARCHIVO $RESPALDOS
ARCHIVO=

echo >>$ALERT_LOG
echo >>$ALERT_LOG
echo ------------------------------------------------------ >> $LOGS/h_genstat.log
echo $(date)  >> $LOGS/h_genstat.log
free -h       >> $LOGS/h_genstat.log
df -hP        >> $LOGS/h_genstat.log
uptime        >> $LOGS/h_genstat.log
/usr/sbin/ifconfig      >> $LOGS/h_genstat.log


if [ -f $ALERT_LOG ];then
FECHA=`date +'%A %d de %B a las %H y %M %p en %Y'`
echo -e "\nREVISION GENERAL DEL SERVIDOR DE BASE DE DATOS REALIZADA EN: $FECHA \n">> $ALERT_LOG
cat $ALERT_LOG
cat $ALERT_LOG>>$LOGS/h_$ALERT_LOG_NAME
fi
exit
exit

