#!/bin/bash

# we will create instances by using instance here
# we create a instance first and assigned a role for it.

AMI_ID=ami-0b4f379183e5706b9
SG_ID=sg-06895fd55cd10cc75
INSTANCES=("MYSQL" "MONGODB" "WEB" "CATALOGUE")
 
for i in ${INSTANCES[@]}
do
    if [ $i == "MYSQL" ] || if [ $i == "MONGODB" ]
    then
       INSTANCE_TYPE=t3.small
    else
    INSTANCE_TYPE=t2.micro
    fi
     aws ec2 run-instances --image-id ami-0b4f379183e5706b9 --instance-type $INSTANCE_TYPE --security-group-ids sg-06895fd55cd10cc75 --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]"
     echo "$i is installing"  

done