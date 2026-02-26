#!/bin/bash
sudo apt-get update
sudo apt-get install -y mariadb-server openjdk-8-jdk unzip wget
sudo service mariadb start
sudo mysql -e "CREATE DATABASE IF NOT EXISTS opm;"
sudo mysql -e "GRANT ALL PRIVILEGES ON opm.* TO 'opm_user'@'localhost' IDENTIFIED BY 'opm_pass';"
echo "✅ ระบบพร้อมใช้งานแล้ว!"
