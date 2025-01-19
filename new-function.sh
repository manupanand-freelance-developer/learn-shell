# function abc(){
#     echo test
# }
#call function like a command
function abc(){
    echo test
}
abc

cde(){
    echo cde
}
cde

function test_arg(){
    echo $1
    dnf install $2
}

test_arg 'new test arg' 'node'