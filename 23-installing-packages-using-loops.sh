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
      echo -e " $R ERROR:Installing $package is FAILED $N "
      exit 1
   else
      echo -e " $G Installing $package IS SUCESS $N "
   fi    
}

validate1
for package in $@
do
   yum list installed $package
      if [ $? -ne 0 ]
      then
         yum install $package -y
            validate2 $package
         
      else 
         echo -e " $Y package is alrady installed $N" 
      fi    
done         

