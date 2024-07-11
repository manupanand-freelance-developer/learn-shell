
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

 sudo systemctl enable nginx 
check

RED='\033[0;32m'
GREEN='\033[0;31m'
NC='\033[0m'
printSuccess(){
  echo -e "${GREEN}$1${NC}"
}
printFail(){
  echo  -e "${RED}$1${NC}"
}
printSuccess SUCCESS
printFail FAILED