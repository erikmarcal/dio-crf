#!/bin/bash

#Atualizar servidor
apt-get update
apt-get upgrade -y

#Instalar apache2
apt-get install apache2 -y

#Instalar unzip
apt-get install unzip -y

#Donwload do zip no diretório /tmp
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#Descompacta arquivo baixado
unzip main.zip
cd linux-site-dio-main

#Copia para a pasta html do apache
cp -R * /var/www/html/
