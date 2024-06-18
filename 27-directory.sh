#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_DIR="/TMP/shell-script.logs"
 
 # to find directory is available or not we have a option 
 # -d $source_dir by this we can find directory available or not

 if [ ! -d $SOURCE_DIR ]
 then
  echo "$R diectory is not available $N"
 else
    echo "$G diectory is available $N"
 fi   


  