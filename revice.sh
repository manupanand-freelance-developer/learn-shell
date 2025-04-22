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

printf "%d\n" 255 0xff 0377
#
#line starting with l from regexfile
grep '^l' regexfile

# statring with lea
grep '^lea' regexfile
echo "-----------"
# $ line should end with so  if nned only lea
grep '^lea$' regexfile
# some time  we want to see a word that endswith
grep '^lea\b' regexfile
echo "---------"
# . - for any character , * 0 or more times
grep 'b.*t' regexfile
echo "-----------"
# + one or more times not ordinary extended
grep -E 'bo+t' regexfile
grep -E 'bo?t' regexfile
echo "---------------"

# 2 times 
grep 'bo\{2\}t' regexfile

#sed stream editor -line oriented

