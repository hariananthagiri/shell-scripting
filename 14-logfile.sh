#!/bin/bash

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
yum install mysql -y &>> $LOGFILE

# we will get error as shown below
# This command has to be run with superuser privileges (under the root user on most systems).
