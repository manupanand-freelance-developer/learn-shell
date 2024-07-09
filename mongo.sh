#this is for making database server
#copy repo file /etc/yum.repos.d/mongo.repo



dnf install mongodb-org -y

#edit mongo config
sed -i 's/127.0.0.1/0.0.0.0' /etc/mongo.conf

systemctl enable mongod
systemctl start mongod
