#!/bin/bash

yum install -y httpd
sleep 5

aws s3 sync s3://my-web-content-bucket-2025/ /var/www/html/ --region ap-south-1

sleep 5

echo $(hostname) >> /var/www/html/index.html

service httpd start
chkconfig httpd on