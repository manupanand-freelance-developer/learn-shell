source common.sh


PRINT Installing mysql
dnf install mysql-server -y
STATUS
PRINT Enable Mysql
systemctl enable mysqld
systemctl restart mysqld
STATUS
PRINT Setting mysql root password
mysql_secure_installation --set-root-pass RoboShop@1
STATUS