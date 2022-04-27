#!/bin/bash

set -e

function update_packages {
   sudo yum update -y
}

function install_apache {
   sudo yum install httpd -y
   sudo systemctl start httpd
   sudo systemctl enable httpd
}

function stop_service_nginx {
 sudo systemctl stop nginx
}

function main {
   update_packages
   install_apache
}


main

