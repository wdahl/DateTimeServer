#!/bin/sh
if [ "$1" = "-s" ]
then
        if [ "$2" -lt 1024 ]
        then
                echo "$0: Permission denied"
                exit 0
        fi


        while [ 1 = 1 ]
        do
		date +"%A, %B %d, %Y %T-%Z" > date
                nc -l "$2" < date
        done

else
        echo "usage: $0 [-s port]"
fi
