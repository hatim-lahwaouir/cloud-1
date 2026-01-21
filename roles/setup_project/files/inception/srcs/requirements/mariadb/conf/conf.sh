#!/bin/bash




echo "mariadb start"
service mariadb start

while true;
	do
	service mariadb status | grep -q Uptime
	if [ $? -eq 0 ]; then
		break
	fi
	sleep 1
done

sleep 2


mariadb -uroot << EOF
CREATE USER IF NOT EXISTS "$SQL_USER"@'%' IDENTIFIED BY "${SQL_PASSWORD}";
CREATE DATABASE IF NOT EXISTS $SQL_DATABASE;
GRANT ALL PRIVILEGES ON $SQL_DATABASE.* TO "${SQL_USER}"@'%';
exit
EOF


service mariadb stop

mysqld_safe
