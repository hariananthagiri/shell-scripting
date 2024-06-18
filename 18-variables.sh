#!/bin/bash

# we can store a file in variable instad of storeing value
# we can give a particular location to save the file 

NAME="/home/centos/shell-script/hari.txt"
# /home/centos/shell-script give the path of vartual meachine or serverbecause we are executeing the code in server.
# $<variable_name> ---> stores the value n varaible and reflect the value where we need and when we need
echo "Iam Storeing the value of variable in file" > $NAME 



