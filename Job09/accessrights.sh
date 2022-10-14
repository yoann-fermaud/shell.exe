#!/bin/bash

path="/home/yoann/LaPlateforme/Git/shell.exe/Job09"
$path/deleteaccessrights.sh

#New users
export IFS=","
cat $path/Shell_Userlist.csv | while read a b c d e || [ -n "$e" ];
do
    #String of tab characters
    string="$a : $b : $c : $d : $e"
    #Corrected username with no space
    userName="$b"_"$c"
    cleanUserName="${userName// /}"
    #Password doubled because too short
    userPasswd="$d$d"

    if [ "$a" != "Id" ]; then
        sudo useradd "$cleanUserName"
        echo "$cleanUserName":"$userPasswd" | sudo chpasswd
        
        if [[ "$e" = *"Admin"* ]]; then
	    sudo adduser "$cleanUserName" sudo
	fi
    else
        echo "$string"
    fi
done

#Backup
cp $path/Shell_Userlist.csv $path/Backup/Shell_UserlistBackup.csv
