#!/bin/bash

AMI="ami-0b4f379183e5706b9"
SG_ID="sg-06895fd55cd10cc75"

INSTANCES=("INSTANCE1" "INSTANCE2" "INSTANCE3" "INSTANCE4")

for i in "${INSTANCES[@]}"
do
   if [ $i == "INSTANCE1" ] || [ $i == "INSTANCE2" ]
   then
      INSTANCE_TYPE="t3.small"
   else
      INSTANCE_TYPE="t2.micro"
   fi
      echo " $i is INSTALLING... "
      aws ec2 run-instances --image-id $AMI --instance-type $INSTANCE_TYPE --security-group-ids $SG_ID --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]" 

done