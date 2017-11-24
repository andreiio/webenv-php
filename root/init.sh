#!/usr/bin/env bash

cp /overrides.conf /etc/php/7.0/fpm/pool.d/z-overrides.conf

# Make sure permissions are right
PUID=${PUID:-1000}
PGID=${PGID:-1000}

usermod -o -u "$PUID" www-data
groupmod -o -g "$PGID" www-data

chown -R www-data:www-data /www

# Remove old pid file
if [ -f /run/php-fpm.pid ]; then
	rm /run/php-fpm.pid
fi

# Start php
/usr/sbin/php-fpm7.0 --nodaemonize
