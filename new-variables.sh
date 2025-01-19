#variable is a name given to a string
# x=100, z=2.0
# in shell there are no data types
#it is all a string
#access a string $varibale_name -$x,${x},${z}

name=Devops
faculty=Manu 
echo Welcome to $name training
echo ${name} Training -faculty $faculty
# when to use {}
# if to print string with compbination of variable
apple=20
echo price is ${apple}rupee

echo '"some string "'


# Variable substitution
# command substitution - You can declare a varible by executing a command and store the output in a variable
# syntax  var=$(command)

dt=$(date)
echo today date is $dt
#arithmetic substitution -can declare avarible by solvinf the given  arithmetic expresssio
#syntax var=$((1+121+3*5/4))

add=$((2+3+4))
echo 2+3+4 -$add

#access variable from CLI 
echo value from cli -$x # run x=100 bash file name
#approach 2 after passing
echo value from cli2 -$1 #run bash filename value1 value2
# argument count
echo argument count $#
#all arguments
echo all arguments - $*

#special variables $1,$2 ..$n,$* ,$#

# giving varibale as global any script will take it as 
echo environment variable z- $z #export z=500, then run script


#input to file > and output from file <
ls > out
cat out