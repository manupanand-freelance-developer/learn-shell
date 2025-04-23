#!/bin/bash
#
if [ -z $1 ]
then 
	echo "you have to provide atleast one argument"
	exit 3
fi
MEM=$(free -m | grep Mem | awk '{print $4}')

if [ $MEM -lt 256 ]
then
	 echo "insufficent memeory"
	 echo  3
fi

sudo dnf install -y "$@"

for s in "$@"
do 
	 sudo systemctl enable --now $s
done
