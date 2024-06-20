#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File' | awk '{print $6F}' | cut -d % -f1)
partition=$(awk '{print $1F}')
DISK_THRESHOLD=1
message=""

while IFS= read line
do 
   echo $line

   if [ $line -ge $DISK_THRESHOLD ]
   then
      message+="high disk usage on $partition:$line\n"
   fi
done <<< $DISK_USAGE

echo -e "message is:$message"

