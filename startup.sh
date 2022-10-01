rm -rf /usr/local/etc/php/conf.d/opcache-recommended.ini
rm -rf /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini
service nginx reload

php artisan key:generate
php artisan optimize