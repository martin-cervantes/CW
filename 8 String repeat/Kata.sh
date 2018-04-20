#!/bin/bash
repeat=$1
string=$2
cadena=""

for (( i=1; i<=$repeat; i++ ))
do
    cadena+=$string
done

echo $cadena
