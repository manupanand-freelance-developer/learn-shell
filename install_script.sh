#!/bin/bash
#
#
#Installation script

if  grep -iq 'ubuntu' /etc/os-release;then
	PACKAGE_MANAGER=apt

fi
if  grep -iq 'red hat' /etc/os-release;then
	PACKAGE_MANAGER=yum
fi

sudo $PACKAGE_MANAGER install $1 -y
