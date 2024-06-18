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
}
validate2(){
   if [ $? -ne 0 ]
   then
      echo -e " $R ERROR:Installing $1 is FAILED $N "
      exit 1
   else
      echo -e " $G Installing $1 IS SUCESS $N "
   fi    
}

# now installing packages Using function call and argument..

validate1
yum instal mysql -y
validate2 MYSQL

validate1
yum install git -y
validate2 GIT


