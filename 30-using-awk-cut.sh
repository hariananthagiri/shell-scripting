#!/bin/bash

file=$(cat file1.txt)
condition=$(awk -F : 'print $1F $2F $3F' | cut -d % f3)
 echo "$file"

 while IFS= read -r line
 do
 $condition
 echo "$condition"
 echo "$line"
 done <<< $file