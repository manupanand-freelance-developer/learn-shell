source common.sh
PRINT Disable redis
dnf module disable redis -y
STATUS
PRINT Enable redis
dnf module enable redis:7 -y
STATUS
PRINT Install redis
dnf install redis -y
STATUS 
#update redis config
PRINT Edit redis configuration
sed -i '/^bind/ s/127.0.0.0/0.0.0.0' /etc/redis/redis.conf
sed -i '/protected-mode/ c protected-mode on' /etc/redis/redis.conf
STATUS
PRINT Enable redis 
systemctl enable redis 
systemctl restart redis
STATUS 