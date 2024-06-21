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
      h) USAGE;exit;;
      :) USAGE;exit;;
      \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
   esac
done

if [ -z "$NAME" ] || if [ -z "$WISHES" ]
then
   echo "ERROR:both -n and -w are mandatory"
   USAGE
   exit 1
fi    
 
echo -e "hii hello $NAME. $WISHES i have been learning shell scripting"