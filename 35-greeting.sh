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
      h|*) USAGE;exit;;
      :) USAGE;exit;;
   esac
done

echo -e "hii hello $NAME. $WISHES i have been learning shell scripting"