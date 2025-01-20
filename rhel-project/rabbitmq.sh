source common.sh


PRINT Copying rabbitmq repo
cp rabbitmq.repo /etc/yum.repos.d/rabbitmq.repo
STATUS
PRINT Install Rabbit-mq
dnf install rabbitmq-server -y
STATUS
PRINT Enable rabbitmq server
systemctl enable rabbitmq-server
systemctl restart rabbitmq-server
STATUS

PRINT Add user roboshop
rabbitmqctl add_user roboshop roboshop123
STATUS
PRINT Set permissions
rabbitmqctl set_permissions -p / roboshop ".*" ".*" ".*"
STATUS