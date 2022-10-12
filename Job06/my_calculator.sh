#!/bin/bash

case $2 in
    "*")
        echo 'Result : ' $(($1*$3))
        ;;
    "+")
        echo 'Result : ' $(($1+$3))
        ;;
    "-")
        echo 'Result : ' $(($1-$3))
        ;;
    "/")
        echo 'Result : ' $(($1/$3))
        ;;
    *)
        echo "Opération non valide"
esac
