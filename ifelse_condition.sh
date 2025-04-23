#!/bin/bash
#
# test command,
#
#
if [ -f /etc/hosts ]
then 
	echo "file exists"
else
	echo "file doesnt exists"
fi
# can write code in one line without 
[ -f /etc/passwd ] && echo "file exixts"

