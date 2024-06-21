#!/bin/bash

NAME=""
WISHES=""

USAGE(){
   echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
   echo "OPTIONS::"
   echo "-n, specify a name"
   echo "-w, specify a wishesh"
   echo "-h, Display help and exit"
}

while getopts ":n:w:h:" opt; do
   case $opt in
      n) NAME="$OPTARG";;
      w) WISHES="$OPTARG";;
      h) USAGE; exit;;
      :) USAGE; exit;;
      \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
   esac
done

# if [ -z "$NAME" ] || if [ -z "$WISHES" ]; then
if [ -z "$NAME" ]; then
   # echo "ERROR:both -n and -w are mandatory"
   echo "ERROR:-n is mandatory"
   USAGE
   exit 1
fi    
echo "Hello $NAME. $WISHES i have been learning shell script"