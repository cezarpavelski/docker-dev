#!/usr/bin/env bash

echo "Updating the packages list";
sudo apt-get update;

echo "Fixing the pecl errors list";
sudo sed -i -e 's/-C -n -q/-C -q/g' `which pecl`;

echo "Installing OpenSSl Libraries";
sudo apt-get install -y autoconf g++ make openssl libssl-dev ibsslcommon2-dev;
sudo apt-get install -y libcurl4-openssl-dev pkg-config;
sudo apt-get install -y libsasl2-dev;

echo "Installing PHP7 mongoDb extension";
sudo pecl install mongodb;

echo "adding the extension to your php.ini file";
sudo echo  ";configuration for php mongodb module" >> /etc/php/7.0/mods-available/mongodb.ini;
sudo echo  ";priority=30" >> /etc/php/7.0/mods-available/mongodb.ini;
sudo echo  "extension=mongodb.so" >> /etc/php/7.0/mods-available/mongodb.ini;

sudo ln -s /etc/php/7.0/mods-available/mongodb.ini /etc/php/7.0/fpm/conf.d/30-mongodb.ini
sudo ln -s /etc/php/7.0/mods-available/mongodb.ini /etc/php/7.0/cli/conf.d/30-mongodb.ini

sudo service php7.0-fpm restart
