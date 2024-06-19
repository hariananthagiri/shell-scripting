#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
file="/etc/passwd"

 if [ ! -f $file ]  # ! denotes for opposite result...
 then
   echo -e "$Y $file $R diectory is not available $N"
 else
    echo -e "$Y $file $G diectory is available $N"
 fi   
# we are using INTERNAL FIELD SAPERATER [ i.e , . & @ any special charector ] it give row wise information

while IFS=":"  read -r user_name password user_id group_id
do
   echo -e "uer_name:$user_name" 
   echo -e "password:$password"
   echo -e "user_id:$user_id" 
   echo -e "group_id:$group_id"


done < $file

# it take output of DELETEING_FILE variable as input to while loop if we give <<< thress less than symbols
# IFS=read -r read line by line and stores in line variable                     