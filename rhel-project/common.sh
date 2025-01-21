#commonly used commands to keep code Dont repeat your code

LOG_FILE=/tmp/roboshop.log
rm -rf $LOG_FILE
core_dir=$(pwd)

RED= '\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
STATUS(){
    if [ $? -eq 0 ]; then
        PRINT_SUCCESS SUCCESS
    else
        PRINT_FAILURE FAILURE
        echo "refer the log file for more information, File path:- /tmp/roboshop.log"
        exit
    fi
}
PRINT_SUCCESS(){
    echo -e "${GREEN}$1${NC}"
}
PRINT_FAILURE(){
     echo -e "${RED}$1${NC}"
}
 PRINT(){
 echo &>> LOG_FILE
 echo  &>> LOG_FILE
 echo "############################ $* ########################"&>> LOG_FILE
 echo  $*
 }

NODE_JS(){
    PRINT disable NodeJs default version
    dnf module disable nodejs -y &>> LOG_FILE
    STATUS
    
    PRINT Enable Nodejs 20 module
    dnf module enable nodejs:20 -y &>> LOG_FILE
    STATUS
    
    PRINT Install Nodejs 
    dnf install nodejs -y &>> LOG_FILE
    STATUS

    PRINT Copy service file
    cp ${component}.service  /etc/systemd/system/${component}.service &>> LOG_FILE
    STATUS
    PRINT Copy monogdb repo file
    cp mongo.repo /etc/yum.repos.d/mongo.repo &>> LOG_FILE
    # NODE_JS # function from common.sh
    STATUS
    PRINT Adding application user
    id roboshop &>> LOG_FILE
    if [ $? -ne 0 ]; then
        useradd roboshop
    fi 
    STATUS
    PRINT Cleaning Old content
    rm -rf /app 
    STATUS
    PRINT Create app directory
    mkdir /app 
    STATUS
    PRINT Download app content
    curl -o /tmp/${component}.zip https://roboshop-artifacts.s3.amazonaws.com/${component}-v3.zip  &>> LOG_FILE
    cd /app 
    PRINT Extract app content
    unzip /tmp/${component}.zip &>> LOG_FILE
    cd /app 
    STATUS
    PRINT Download Nodejs dependencies
    npm install  &>> LOG_FILE
    PRINT Start service
    systemctl daemon-reload &>> LOG_FILE
    systemctl enable ${component} &>> LOG_FILE
    systemctl start ${component} &>> LOG_FILE
    STATUS
}

