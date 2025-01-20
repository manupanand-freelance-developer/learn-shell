source common.sh
PRINT Copying payment service
cp payment.service /etc/systemd/system/payment.service
STATUS
PRINT Install Python GCC
dnf install python3 gcc python3-devel -y
STATUS
PRINT Adding user roboshop
useradd roboshop
STATUS

PRINT Remove old content

rm -rf /app
mkdir /app
STATUS
PRINT Copying new content
curl -L -o /tmp/payment.zip https://roboshop-artifacts.s3.amazonaws.com/payment-v3.zip 
cd /app 
unzip /tmp/payment.zip
STATUS


cd /app
PRINT Install dependencies 
pip3 install -r requirements.txt

STATUS

PRINT Starting payment service
systemctl daemon-reload
systemctl enable payment 
systemctl restart payment
STATUS