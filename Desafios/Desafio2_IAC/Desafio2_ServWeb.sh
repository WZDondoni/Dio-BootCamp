#! /bin/bash

echo "atualizando servidor"
apt-get update
apt-get ugprade -y

echo "instalando aplicações"
apt-get install apache2 -y
apt-get install unzip -y

echo "baixando arquivos do site"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cd linux-site-dio-main

echo "instalando arquivos no servidor"
cp -R * /var/www/html/



