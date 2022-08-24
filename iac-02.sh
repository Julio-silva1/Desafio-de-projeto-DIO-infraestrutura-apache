#!/bin/bash

#atualizando os repositórios e o sistema
sudo apt-get update -y
sudo apt-get upgrade -y

#instalando Apache
sudo apt-get install apache2 -y

#instalando Unzip
sudo apt-get install unzip -y

#Ir para o diretório /tmp
cd /tmp/

#Baixar a aplicação que está no Github
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#Extrair o arquivo compactado
unzip main.zip

#Entrar na pasta da aplicação
cd linux-site-dio

#Copiar todos os arquivos para o Apache
cp -R * /var/www/html/

