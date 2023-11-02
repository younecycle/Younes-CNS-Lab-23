#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
echo "Installed apache."
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
  echo "Success!!"
fi

