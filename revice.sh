#!/bin/bash

echo 'hello manu'

#std in <
#
#stdout >
#
#append>>
#stderr 2>file
#/dev/null - nullify output
#
echo test
echo  -e 'b\bc'


printf "%f\n" 255
printf "%s\n" 255
printf "%d\n" 255
printf "%.1f\n" 256


for i in $(seq 1 10);do printf "%04d\t" "$i"; done

exit 220
