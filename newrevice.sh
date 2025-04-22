#!/usr/bin/env bash
#
# author  manu p anand
#
echo "test ok"

clear 
printf '%s\n' "hello world"

declare -r NAME=manu
echo $NAME


#to export the vaible to subshell
export UNAME="myname" 
echo $UNAME

# better way to  represent variable is {}
#
echo ${UNAME}
echo ${UNAME}1
echo $RANDOM

COLOR=red
TREE=oak
echo the ${TREE} is ${COLOR}
