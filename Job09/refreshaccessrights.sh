#!/bin/bash

#path="$(pwd)"
path="/home/yoann/LaPlateforme/Git/shell.exe/Job09"

refresh=$(sudo find $path/Shell_Userlist.csv -mmin -5 | grep -c $path/Shell_Userlist.csv)

case "$refresh" in
    "0")
    	echo "$path"
        echo "Aucune modification sur le fichier"
        ;;
    "1")
        echo "Actualisation en cours"
        $path/accessrights.sh
        ;;
esac
