source common.sh
PRINT Disable nginx
dnf module disable nginx -y
STATUS
PRINT Enable nginx
dnf module enable nginx:1.24 -y
STATUS
PRINT Installing nginx
dnf install nginx -y
STATUS
PRINT Copy nginx conf
cp nginx.conf /etc/nginx/nginx.conf
STATUS
PRINT Enable Nginx
systemctl enable nginx
systemctl start nginx
STATUS
PRINT Remove old content
rm -rf  /usr/share/nginx/html/*
STATUS
PRINT Adding new content
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend-v3.zip
cd /usr/share/nginx/html
unzip /tmp/frontend.zip
STATUS

PRINT Enable nginx
systemctl restart nginx
systemctl daemon-reload
STATUS
# run sudo bash frontend.sh