#!/bin/bash

#Crontab values to start ./get_logs.sh every hours
#0 */1 * * *  /home/yoann/LaPlateforme/Projets/Shell.exe/Job08/get_logs.sh

path=$(pwd)
date=$(date '+%d-%m-%Y-%H:%M')
file="number_connection-$date"


grep -c "session opened" /var/log/auth.log > $file
tar -cf number_connection.tar.gz $file
mv number_connection.tar.gz $path/Backup/number_connection-$date.tar.gz

#Delete uncompressed file !
rm number_connection-$date
