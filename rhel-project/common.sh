#commonly used commands to keep code Dont repeat your code

LOG_FILE=/tmp/roboshop.log
rm -rf $LOG_FILE

 PRINT(){
 echo &>> LOG_FILE
 echo  &>> LOG_FILE
 echo "############################ $* ########################"&>> LOG_FILE
 echo  $*
 }

NODE_JS(){
    PRINT disable NodeJs default version
    dnf module disable nodejs -y &>> LOG_FILE
    
    PRINT Enable Nodejs 20 module
    dnf module enable nodejs:20 -y &>> LOG_FILE
    
    PRINT Install Nodejs 
    dnf install nodejs -y &>> LOG_FILE

    PRINT Copy service file
    cp ${component}.service  /etc/systemd/system/${component}.service &>> LOG_FILE
    
    PRINT Copy monogdb repo file
    cp mongo.repo /etc/yum.repos.d/mongo.repo &>> LOG_FILE
    # NODE_JS # function from common.sh
    
    PRINT Adding application user
    useradd roboshop 

    PRINT Cleaning Old content
    rm -rf /app 

    PRINT Create app directory
    mkdir /app 
    
    PRINT Download app content
    curl -o /tmp/${component}.zip https://roboshop-artifacts.s3.amazonaws.com/${component}-v3.zip  &>> LOG_FILE
    cd /app 
    PRINT Extract app content
    unzip /tmp/${component}.zip &>> LOG_FILE
    cd /app 

    PRINT Download Nodejs dependencies
    npm install  &>> LOG_FILE
    PRINT Start service
    systemctl daemon-reload &>> LOG_FILE
    systemctl enable ${component} &>> LOG_FILE
    systemctl start ${component} &>> LOG_FILE
}
