#!/bin/sh
# set -x
# Manda mail si el servicio POSTGRESQL no corre al iniciar
# -------------------------------------------------------------------------
# Setea el mail del que recibe
ADMIN=dba@conexia.com
# Setea palabra a buscar
ALERT="postgres"
SERVER=$(hostname | awk '{ print $1 }')
IP=$(hostname -i | awk '{ print $1 }')
#IP=$(/sbin/ifconfig ${iface} | grep 'inet' | cut -d: -f2 | cut -d " " -f1 | grep -v 127 | head -1)
PRIMERA="NOPASO"
#
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#
function main_prog() {
while read output;
do
#echo $output

  corre=$(echo $output | awk '{print $1}')
  servicio=$(echo $output | awk '{print $2}')
  puerto=$(echo $output | awk '{print $3}')

           if [ $corre != $ALERT ] ; then
                if [ $PRIMERA = "PASO" ] ; then
            echo -e "El servidor $SERVER -- IP:$IP se reinicio, el/los servicios de Postgres todavia NO INICIARON" | mutt -s "OK Reinicio de $SERVER" $ADMIN
#echo entro
                PRIMERA="PASO"
                fi
                sleep 120

                if [ $corre != $ALERT ] ; then
                 echo -e "El servicio de Postgres $servicio de $SERVER -- IP:$IP que escucha en el puerto $puerto NO INICIO despues del reinicio (Tiempo de espera despues del reinicio: 2 minutos)" | mutt -s "ERROR No inicio el Postgres de $SERVER" $ADMIN
#echo entro1
                else

                 echo -e "INICIO el servicio de Postgres $servicio de $SERVER -- IP:$IP que escucha en el puerto $puerto" | mutt -s "OK Inicio el Postgres de $SERVER" $ADMIN
#echo entro2
                fi
         else

           echo -e "INICIO el servicio de Postgres $servicio de $SERVER -- IP:$IP que escucha en el puerto $puerto luego de un reinicio" | mutt -s "OK Reinicio de $SERVER" $ADMIN
#echo entro3
         fi

done
}

ps -fea | grep -v grep | grep  bin/post | awk '{ print  $1 " " $8 " " $10 }' | main_prog
