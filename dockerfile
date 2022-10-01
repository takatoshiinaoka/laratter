FROM php:8.1.1-apache
# 拡張 phpなど
RUN apt update && apt install -y zlib1g-dev g++ libicu-dev zip libzip-dev zip libpq-dev \
    && docker-php-ext-install intl opcache pdo_mysql \
    && pecl install apcu \
    && docker-php-ext-enable apcu \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# laravel アプリのソースをコンテナイメージにコピー
# 秘匿情報がはいっているファイル(.envなど)は .dockerignore で除外しておきます。
COPY ./ /var/www/html/

# PHPライブラリー(laravel等)のインストール
RUN composer install

# .htaccess
RUN a2enmod rewrite