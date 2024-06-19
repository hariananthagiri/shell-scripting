#!/bin/bash
# lsblk
sudo file -s /dev/xvdf
sudo lsblk -f
sudo mkfs -t xfs /dev/xvdf
sudo mkdir /data
sudo mount /dev/xvdf /data
