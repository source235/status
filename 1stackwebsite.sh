#!/bin/bash
rm -rf runweb.x
clear
cd /www/wwwroot/momo.speed4g.xyz
rm -rf *
git clone https://github.com/source235/momo.git ./
unzip -u momo.zip
rm -rf momo.zip
clear
cd ..
cd atm.speed4g.xyz
rm -rf *
git clone https://github.com/source235/atm.git ./
unzip -u atm.zip
rm -rf atm.zip
clear
cd ..
cd card.speed4g.xyz
rm -rf *
git clone https://github.com/source235/card.git ./
unzip -u card.zip
rm -rf card.zip
cd ../../..
clear
cd /www/wwwroot/speed4g.xyz
unzip -u speed4g.xyz.zip
rm -rf speed4g.xyz.zip
rm -rf .env
clear
composer update
php artisan package:discover --ansi
composer dump-autoload --ignore-platform-reqs
composer dump-autoload
sh init.sh
sleep 60
sudo php artisan config:clear
