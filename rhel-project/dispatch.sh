source common.sh
PRINT Copying Dispatch service
cp dispatch.service /etc/systemd/system/dispatch.service
STATUS
PRINT Installing Golang
dnf install golang -y
STATUS
PRINT Adding roboshop user
useradd roboshop
STATUS
PRINT Removing Old content
rm -rf /app
mkdir /app 
STATUS
PRINT Copying new files dispatch
curl -L -o /tmp/dispatch.zip https://roboshop-artifacts.s3.amazonaws.com/dispatch-v3.zip 
cd /app 
unzip /tmp/dispatch.zip
STATUS
PRINT Intialising application
cd /app 
go mod init dispatch
go get 
go build
STATUS
PRINT Enable dispatch Service
systemctl daemon-reload
systemctl enable dispatch 
systemctl restart dispatch
STATUS