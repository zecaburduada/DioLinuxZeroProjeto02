#!/bin/bash

echo "Atualizações"

apt-get update
apt-get upgrade -y

echo "Instalções"

apt-get apache2 -y
apt-get unzip -y

echo "Trabalhando com arquivos"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Movendo para o servidor Apache"

cd linux-site-dio-main
cp -R * /var/www/html
