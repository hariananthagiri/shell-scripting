#!/bin/bash

# we will create instances by using instance here
# we create a instance first and assigned a role for it.

AMI_ID=ami-0b4f379183e5706b9
SG_ID=sg-06895fd55cd10cc75
INSTANCES=("MYSQL" "MONGODB" "WEB" "CATALOGUE")

for i in "${INSTANCES[@]}"
do

   if [ $i == "MYSQL" ] || if [ $i == "MONGODB" ]
   then
      INSTANCE_TYPE="t3.small"
   else
      INSTANCE_TYPE="t2.micro"  
   fi   
    
    echo " $i is INSTALLING... " 
    aws ec2 run-instances --image-id $AMI_ID --instance-type $INSTANCE_TYPE --security-group-ids $SG_ID --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]"&> /tmp/$0.log
done