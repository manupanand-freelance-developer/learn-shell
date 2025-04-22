#!/bin/bash
#
#
#Installation script

if [ grep 'ubuntu' /etc/os-release ]
then
	PACKAGE_MANAGER=yum
fi
if  [ grep 'rhel' /etc/os-release ]
then
