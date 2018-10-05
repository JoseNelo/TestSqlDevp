#!/bin/bash
cd /home/bases_postgres/data/pg_log
logfile=/home/bases_postgres/scripts/archlogfile.txt
SERVER=$(hostname -f)
echo "Se borraron " >> $logfile 2>&1
find . -name \*.log -mtime +20 | wc -l >> $logfile 2>&1
find . -name \*.log -mtime +20 -exec rm -f {} \;
echo "archivos del Log del Postgres de $SERVER anteriores a 20 dias de la carpeta '/home/bases_postgres/data/pg_log'" >> $logfile 2>&1
cat $logfile | /usr/bin/mutt -s "LOG POSTGRES" dba@conexia.com
rm $logfile
