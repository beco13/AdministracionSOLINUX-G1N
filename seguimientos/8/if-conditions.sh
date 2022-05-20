#!/bin/bash

set -e

servidor=$1

function install_nginx {
	yum update
	yum install nginx
	systemctl start nginx
	systemctl enable nginx
}

function install_httpd {
	yum update
	yum install httpd
	systemctl start httpd
	systemctl enable httpd
}

function main {

	if [ "$servidor" == "nginx" ]
		then
			install_nginx
	fi

	if [ "$servidor" == "httpd" ]
		then
			install_httpd
	fi
}

main

