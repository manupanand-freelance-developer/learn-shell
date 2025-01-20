source common.sh
component=catalogue
NODE_JS

echo install mongodb
dnf install mongodb-mongosh -y &>> LOG_FILE
STATUS
echo master data
mongosh --host mongo.dev.project.online </app/db/master-data.js &>> LOG_FILE
STATUS