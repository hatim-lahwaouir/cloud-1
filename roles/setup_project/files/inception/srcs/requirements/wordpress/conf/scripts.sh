#!/bin/bash

sleep 10
# rm -rf /var/www/wordpress/wp-config.php
# wp config create --allow-root --path='/var/www/wordpress' \
# 	--dbname=$SQL_DATABASE \
# 	--dbuser=$SQL_USER \
# 	--dbpass=$SQL_PASSWORD \
# 	--dbhost=mariadb:3306
sed -i "s/\$SQL_PASSWORD/$SQL_PASSWORD/" /var/www/wordpress/wp-config.php
sed -i "s/\$SQL_USER/$SQL_USER/" /var/www/wordpress/wp-config.php
sed -i "s/\$SQL_DATABASE/$SQL_DATABASE/" /var/www/wordpress/wp-config.php
env
wp core install --path='/var/www/wordpress' --allow-root --url=miloki.me --title=DUDU --admin_user=$SQL_USER --admin_password=$SQL_PASSWORD --admin_email=yahyatomi555@gmail.com
wp user create $SECOND_USER yahyatoumi5555@gmail.com --path='/var/www/wordpress'  --allow-root --role=author --user_pass=$SECOND_PASSWORD

php-fpm7.4 -F
