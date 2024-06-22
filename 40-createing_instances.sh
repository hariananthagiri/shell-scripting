#!/bin/bash

# we are createing a instance login into it 
# createing a role and attaching it to created instance instance in CLI 
# now give full ec2-access to that role before attaching to ec2 instance
# now use CLI command to create instance as shown in line-22
# we can do this by using aws configure command by using IAM option and createing USER
# now store the secret key id and access key id but anyone can access it who are haveing ec2 instance access
# all those credentials are sored in .aws/config/credentials after performing aws configure command and we can see in ls -l command

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
