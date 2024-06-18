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
   echo -e " $G your a root user $N "
fi
yum install mysql -y

if [ $? -ne 0 ]
then
   echo -e " $R ERROR::$N installing mysql is failed "
   exit 1
else
   echo -e " $G Installing MYSQL IS SUCESSFUL "
fi

yum install git -y

# here we are instaliing mysql and git 2 packages are installing and same code is repeating multipule times
# to over come that function concept is came refer pgm 21-installing-functions.sh

if [ $? -ne 0 ]
then
   echo -e " $R ERROR::$N installing GIT is failed "
   exit 1
else
   echo -e " $G Installing GIT IS SUCESSFUL "
fi