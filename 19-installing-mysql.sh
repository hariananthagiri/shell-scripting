#!/bin/bash

R="/e[31m"
G="/e[32m"
Y="/e[33m"
N="/e[0m"
ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo -e " $R ERROR $N your not a root user"
else
   echo "your a root user"
fi

