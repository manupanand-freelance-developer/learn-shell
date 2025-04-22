#!/bin/bash
#
#install lftp vsftpd
sudo apt install -y vsftpd lftp

sudo sed -i -e 's/anonymous_enable=NO/anonymous_enable=YES/' /etc/:wq!
:wq!
vsftpd.conf

sudo systemctl disable --now vsftpd
sudo systemctl enable --now vsftpd
sudo cp /etc/hosts /var/ftp/pub


lftp localhost <<ENDSESSION
ls
cd pub
get hosts
ls
quit 
ENDSESSION
