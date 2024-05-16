#!/bin/bash

usermod -d /var/lib/mysql/ mysql
service mysql restart

# BASE CONFIG
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';"

# NEW USER
mysql -e "CREATE USER 'user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'user';"
mysql -e "CREATE DATABASE phptl";
mysql -e "GRANT ALL PRIVILEGES ON phptl.* TO 'user'@'localhost';"

# Import base DDBB
echo "Importing base dabatase into Mysql"
mysql phptl < /root/files/base_phptl.sql