#!/bin/bash
rm -rf runweb.x
clear
cd /www/wwwroot/momo.speed4g.xyz
rm -rf *
git clone https://github.com/source235/momo.git ./
unzip -u momo.speed4g.xyz.zip
rm -rf momo.speed4g.xyz.zip
clear
cd ..
cd atm.speed4g.xyz
rm -rf *
git clone https://github.com/source235/atm.git ./
unzip -u atm.speed4g.xyz.zip
rm -rf atm.speed4g.xyz.zip
clear
cd ..
cd card.speed4g.xyz
rm -rf *
git clone https://github.com/source235/card.git ./
unzip -u card.speed4g.xyz.zip
rm -rf card.speed4g.xyz.zip
cd ../../..
clear
cd /www/wwwroot/speed4g.xyz
git clone https://github.com/source235/website.git ./
unzip -u SPEED4G1.zip
unzip -u SPEED4G2.zip
rm -rf SPEED4G1.zip
rm -rf SPEED4G2.zip
rm -rf .env
clear
composer update
php artisan package:discover --ansi
composer dump-autoload --ignore-platform-reqs
composer dump-autoload
sh init.sh
sudo php artisan config:clear
