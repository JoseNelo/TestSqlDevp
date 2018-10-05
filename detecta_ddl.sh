#!/bin/bash
#crontab 0 6,15,23 * * *
#BASE_PATH=/home/bases_postgres/scripts/detecta_ddl_log
#DATE=$(date '+%Y-%m-%d')
#FILE=/home/bases_postgres/data/pg_log/postgresql-${DATE}*.log
#LOG=${BASE_PATH}/detecta_ddl-${DATE}.log

#hoy
DATE=$(date '+%Y-%m-%d')

#Nomde e IP de este equipo
THISHOST=$(hostname -f)
THISHOSTIP=$(hostname -i)

#donde esta la data del postgres?
PG_DATA=$( ps -aux | grep postgres | grep " -D " | grep "/bin" | awk '{print $13}') 

#donde voy a dejar el log de este script
LOG=/home/bases_postgres/scripts/detecta_ddl_log/detecta_ddl-${DATE}.log
#cd /home/bases_postgres/scripts/detecta_ddl_log/
#Si existe un log anterior, lo borro
[ -e $LOG ] && rm $LOG
find /home/bases_postgres/scripts/detecta_ddl_log -name *.log -mtime +7 -exec rm -f {} \;

#Busco los archivos de log de los ultimso 59 minutos, y que en su contenido tengan alun ddl
find $PG_DATA -type f -mmin -59 -iname "*.log" | xargs -i egrep 'DROP TABLE |CREATE TABLE |CREATE INDEX |CREATE USER |CREATE FUNCTION |CREATE TRIGGER |TRUNCATE TABLE |ALTER TABLE |GRANT |REVOKE |stale |shutdown |aborting |SIGHUP ' >> $LOG

#busco el tamaño del archivo de log
LOG_SIZE=$(ls -lh ${LOG} | awk '{print $5}')

#Si el archivo de log tiene algo, sale mail.
if [ ${LOG_SIZE} <> 0 ]
then
	if md5sum --status -c $LOG.md5; then
		echo "No hay cambios, no se envia"
	else
		md5sum $LOG > $LOG.md5 
	        cat ${LOG} | /usr/bin/mutt -s "$THISHOST (IP: $THISHOSTIP) - Se detectaron DDLs " dba@conexia.com
	fi 
fi




