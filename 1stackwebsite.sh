#!/bin/bash
clear
cd /www/wwwroot/momo.speed4g.xyz
git clone https://github.com/source235/momo.git ./
unzip momo.zip
rm -rf momo.zip
clear
cd ..
cd atm.speed4g.xyz
git clone https://github.com/source235/atm.git ./
unzip atm.zip
rm -rf atm.zip
clear
cd ..
cd card.speed4g.xyz
git clone https://github.com/source235/card.git ./
unzip card.zip
rm -rf card.zip
cd ../../..
clear
cd /www/wwwroot/speed4g.xyz
unzip speed4g.xyz.zip
rm -rf speed4g.xyz.zip
rm -rf .env
clear
composer update
clear
php artisan package:discover --ansi
clear
composer dump-autoload --ignore-platform-reqs
clear
composer dump-autoload
clear
sh init.sh
