#!/bin/bash

hari.function(){
if [$1 -gt $2]
then
   echo "$1 is bigger"
else
   echo "$2 is bigger"
fi 
}
hari.function 10 20