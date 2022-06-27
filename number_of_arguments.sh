#!/bin/bash

if [ "$#" -e "0" ]
then
        echo "skrypt wywolano bez parametrow"
elif [ "$#" -eq "1" ]
then
        echo "Skrypt wywolano z jednym parametrem"
else
        echo "Skrypt wywolano z $# parametrami"
        echo "Podane argumenty: $*"
        echo "Podaj liczbe:"
        read liczba
        if [ "$#" -ge "$liczba" ]
        then    
                shift $liczba
                echo "Podane argumenty po operacji shift"
                echo "$*"
        else
                echo "Podano za duza liczbe"
        fi

fi