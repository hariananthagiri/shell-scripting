#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_DIR="/tmp/shell-script.logs"
 
 # to find directory is available or not we have a option 
 # -d $source_dir by this we can find directory available or not

 if [ ! -d $SOURCE_DIR ]
 then
   echo -e "$R $SOURCE_DIR diectory is not available $N"
 else
    echo -e "$G $SOURCE_DIR diectory is available $N"
 fi   


  