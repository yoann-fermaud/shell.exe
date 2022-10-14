#!/bin/bash

path="/home/yoann/LaPlateforme/Git/shell.exe/Job09"

#Delete users
export IFS=","
cat $path/Backup/Shell_UserlistBackup.csv | while read a b c d e || [ -n "$e" ];
do
    #String of tab characters
    string="$a : $b : $c : $d : $e"
    #Corrected username with no space
    userName="$b"_"$c"
    cleanUserName="${userName// /}"
    #Password doubled because too short
    userPasswd="$d$d"
    
    if [ "$a" != "Id" ]; then
        sudo userdel "$cleanUserName"
    fi
done
