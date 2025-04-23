#!/bin/bash
#
# check if disk and memeory is low
VAR_DISK=$(df -m | grep '/$'| awk '{print $4}')
echo "var disk free:$VAR_DISK"
#memory sapce
MEM_FREE=$(free -m | grep 'Mem'| awk '{print $4}')
echo "memory free space:$MEM_FREE"
if [ $VAR_DISK -le $((1024*3)) ] && [ $MEM_FREE -le $((1024)) ]
then
	echo "Warning:Low resources"
else 
        echo "Disk on /var is $VAR_DISK, memory is $MEM_FREE"
fi	
#
# check if only disk is low
if [ $VAR_DISK -le $((1024*3)) ] 
then
        echo "Warning:Low disk space on /var"
fi
#
#
# check if only memory is low
if [ $MEM_FREE -le $((1024)) ]
then
        echo "Warning:Low memoryresources"
else
	echo "all resourse are good"
fi
#
#
# print message if all is good
