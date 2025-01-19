#SED Editor
#1 delete line 
#2 add a line
#change a line
# search and replace a word



#SED display the changes on screen
sed  "action" file


#SED edit the file
sed -i "action" file

#action criteria can be picked in two ways
#1 line number based
#2 string search based

# if we want delete a line 
# for line criteria
sed '1 d' filename

#for search string criteria
sed '/root/ d' filename

# if we want to edit the file 
sed -i '1 d' file name
sed -i '/root/ d'filename

# add new line
sed '1 i hello 'file name
# where ever a word bash insert hello
sed '/bash/ i hello' filename # it will update before word
#append or add after line, use append
sed '/bash/ a hello' filename
# change the word
sed '/bash/ c hello' filename

#search and replace subtitute s
#subtitute halt and replace with poweroff 
sed 's/halt/poweroff/' filename
# if awanto replace all possibility in line use g
sed 's/halt/poweroff/g' filename
# if want o search for a word an only then replace word
sed '/sshd/ s/usr/users/' filename


#edit mongo.conf
cat /etc/mongod.conf
#replace 127.0.0.1 to 0.0.0.0
sed -i 's/127.0.0.0/0.0.0.0/' /etc/mongod.conf

#update redis.cong update only 127.0.0.0 after bind
# check 
sudo cat /etc/redis/redis.conf |grep 127.0.0.0
sudo cat /etc/redis/redis.conf |grep 127.0.0.0 |sed '/bind/ s/127.0.0.0/0.0.0.0/'
#starting of line bind ^
sudo cat /etc/redis/redis.conf |grep 127.0.0.0 |sed '/^bind/ s/127.0.0.0/0.0.0.0/'
# also change
sudo cat /etc/redis/redis.conf |grep 127.0.0.0 |sed '/bind/ c bind 127.0.0.0'


#function is a name given to a set of commands
# function abc(){
#commands
#}
# function abc(){
#     echo hello
# }