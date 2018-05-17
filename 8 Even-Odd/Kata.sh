#!/bin/bash
number=$1
res=$number%2

if [ $res -eq 0 ]
then
  echo "Even"
else
  echo "Odd"
fi
