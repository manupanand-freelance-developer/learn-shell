cp mongo.repo /etc/yum.repos.d/mongo.repo
dnf install mongodb-org -y
#update config file
sed -i 's/127.0.0.0/0.0.0.0/' /etc/mongod.conf
systemctl enable mongod 
systemctl restart mongod 
#edit mongod.conf