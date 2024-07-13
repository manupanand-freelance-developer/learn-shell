
function check(){
if [$? -eq 0]; then
  echo SUCCESS
else
  echo FAILED
fi
}
bash bash.sh
check

# dnf module disable nginx -y
# dnf module enable nginx:1.24 -y
# dnf install nginx -y  &>/dev/null

#  sudo systemctl enable nginx 
# check

RED='\033[0;32m'
GREEN='\033[0;31m'
NC='\033[0m'
printSuccess(){
  echo -e "${GREEN}$1${NC}"
}
printFail(){
  echo  -e "${RED}$1${NC}"
  echo 
  echo  -e  "\e[33mRefer the log file for more information \e[0m"
  #exit $1 #on failure exit
}
printSuccess SUCCESS
printFail FAILED

#-e to enable 
#\e to enable color
#[COLORm-31m-36m
#0m-end color-reset otherwise it will continue
echo  -e  "\e[31mTEST\e[0m"
echo  -e  "\e[31m${1}\e[0m"
echo  -e  "\e[31mRED\e[0m"
echo  -e  "\e[32mGREEN\e[0m"
echo  -e  "\e[33mYELLOW\e[0m"
echo  -e  "\e[34mBLUE\e[0m"
echo  -e  "\e[35mMAGENTA\e[0m"
echo  -e  "\e[36mCYAN\e[0m"
#  new line 
echo -e "hello \n world"
echo -e "hello \t world"
# quotes when to use 
# other than a-z,0-9, _: any secial character on command or input
#
echo *
echo "*"
a=15
echo 'a is $a'
echo "a is $a"
#loops-while if we have expression we use while
#if we have inputs we use for
i=10
while [ $i -gt 0 ];do 
  echo Hello -$i
  i=$(($i-1))
done
  
  for i in apple banana orange; do
  echo fruit name - $i
  done