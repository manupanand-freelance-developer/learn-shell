source common.sh


PRINT Copying mongodb repo
cp mongo.repo /etc/yum.repos.d/mongo.repo
STATUS
PRINT Installing mogodb
dnf install mongodb-org -y
STATUS
#update config file
PRINT Uppdating the config file
sed -i 's/127.0.0.0/0.0.0.0/' /etc/mongod.conf
STATUS
PRINT Enable mongo service
systemctl enable mongod 
systemctl restart mongod 
STATUS
#edit mongod.conf