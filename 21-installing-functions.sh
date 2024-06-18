#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
ID=$(id -u)

validate1(){
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
}
validate2(){
if [ $? -ne 0 ]
then
   echo -e " $R ERROR::$N installing $1 is failed "
   exit 1
else
   echo -e " $G Installing $1 IS SUCESSFUL  $N "
fi    
}

# now installing packages

validate1
yum install mysql -y
validate2 MYSQL

validate1
yum install git -y
validate2 GIT


