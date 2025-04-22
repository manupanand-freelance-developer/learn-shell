#!/bin/bash
#
source variables.sh


echo $NAME


# or  use . variable.sh
#
echo "Hello $1, how are you today"
echo "Hello $2, how are you"
echo "hello $10, test"
echo "hello ${10}"

shift # shift is used to shift the positinal parameter to left

echo hi $2
echo "---------------"
echo "$#"

echo showing interpretation of \$*
# show every argument in single line
for i in "$*"
do
	echo $i
done

# show interpretation of $@
for i in "$@"
do  
	echo $i
done

today=$(date +%d-%m-%y)
echo $today

# writes backup file to curent dir ,and backs up everything provided as argument
#
if [ -z $1 ]
then
	echo "argument is required"
	exit 5
fi

sudo tar -cvf $(date +%d-%m-%y).bak $@


