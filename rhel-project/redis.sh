dnf module disable redis -y
dnf module enable redis:7 -y
dnf install redis -y 
#update redis config
sed -i '/^bind/ s/127.0.0.0/0.0.0.0' /etc/redis/redis.conf
sed -i '/protected-mode/ c protected-mode on' /etc/redis/redis.conf
systemctl enable redis 
systemctl restart redis 