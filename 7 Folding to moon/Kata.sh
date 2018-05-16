#!/bin/bash
distance=$1

times=0
thickness=0.0001

if [ $distance -le 0 ]
then
    echo "None"
else
    while [ $distance > $thickness ]
    do
        thickness =`expr $thickness \* 2`
        times =`expr $times + 1`
    done

    echo $times
fi
