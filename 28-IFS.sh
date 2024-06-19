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
    
# we are using INTERNAL FIELD SAPERATER [ i.e , . & @ any special charector ] it give row to column wise information

while IFS=":"  read -r user_name password user_id group_id user_full_name home_dir shell_path
do
   echo -e "uer_name:$user_name" 
   echo -e "password:$password"
   echo -e "user_id:$user_id" 
   echo -e "group_id:$group_id"
   echo -e "user_full_name $user_full_name"  
   echo -e "home_dir:$home_dir" 
   echo -e "shell_path:$shell_path"           
do
done < $file

# it take output of file variable as input to while loop 
# IFS=read -r read line by line and stores in line variable                     