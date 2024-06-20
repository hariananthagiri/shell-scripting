#!/bin/bash

NAME=""
WISHES=""

USAGE(){
   echo "USAGE :$(basename $0) -n <name> -w <wishes> -h <help>"
   echo "options ::"
   echo " -n, give the name" 
   echo " -w, write wishes"
   echo " -h, display help and exit"
}
while getopts "n:w:h" opt; do
   case $opt in
      n) NAME="$OPTARG";;
      w) WISHES="$OPTARG";;
      h|*)USAGE;exit;;
   esac
done

echo "hellow $NAME.$WISHES. I have been learning shell script"