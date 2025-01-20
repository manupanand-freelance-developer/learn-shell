# function abc(){
#     echo test
# }
#call function like a command
RED= '\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
STATUS(){
    if [ $? -eq 0 ]; then
        PRINT_SUCCESS SUCCESS
    else
        PRINT_FAILURE FAILURE
    fi
}
PRINT_SUCCESS(){
    echo -e "${GREEN}$1${NC}"
}
PRINT_FAILURE(){
     echo -e "${RED}$1${NC}"
}
function abc(){
    echo test
}
abc
STATUS
cde(){
    echo cde
}
cde
STATUS
# function test_arg(){
#     echo $1
#     dnf install $2
# }

# test_arg 'new test arg' 'node'

STATUS(){
    if [ $? -eq 0]; then
        echo success
    else
        PRINT_FAILURE FAILURE
    fi
}
PRINT_SUCCESS(){
    echo -e "${GREEN}$1${NC}"
}
PRINT_FAILURE(){
     echo -e "${RED}$1${NC}"
}

echo -e "\e[33mHello man\e[0m"