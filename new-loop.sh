# when we want to execute commands agian and again
#while loop and for loop

#while if we have  expression i=10

i=10
while [ $i -gt 0 ]; do 
    echo Hello - $i
    i=$(($i-1))
done


# for loop when we have inputs

for j in apple banana orange; do
    echo Fruit name - $j
done
# array
list=(
    banana
    apple)

for k in "${list[@]}" ; do
    echo " fruit - $k"

done
items=$(cat filename)

for r in $items; do
    echo r
done

#variable
#functions
#conditions
#loops