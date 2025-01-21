source common.sh

PRINT Copying shipping service
cp shipping.service /etc/systemd/system/shipping.service
STATUS
PRINT Install Maven
dnf install maven -y
STATUS
PRINT Add user roboshop
useradd roboshop
STATUS
PRINT Remove old content
rm -rf /app
mkdir /app
STATUS
PRINT Copying new content
curl -L -o /tmp/shipping.zip https://roboshop-artifacts.s3.amazonaws.com/shipping-v3.zip 
cd /app 
unzip /tmp/shipping.zip
STATUS

cd /app
PRINT Clean maven package 
mvn clean package 
STATUS
mv target/shipping-1.0.jar shipping.jar 

PRINT Install mysql
dnf install mysql -y
STATUS
PRINT Copying database files 
for file in schema app-user master-data ; do
PRINT Copying database files - $file.sql
mysql -h mysql.dev.project.online -uroot -pRoboShop@1 < /app/db/$file.sql
done
STATUS
PRINT Start shipping service
systemctl daemon-reload
systemctl enable shipping 
systemctl restart shipping
STATUS