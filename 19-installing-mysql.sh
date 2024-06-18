#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo -e " $R ERROR::$N your not a root user "
   exit 1
else
   echo -e " $G your a root user "
fi
yum install mysql -y

if [ $? -ne 0 ]
then
   echo -e " $R ERROR::$N installing mysql is failed "
   exit 1
else
   echo -e " $G Installing MYSQL IS SUCESSFUL "
fi
