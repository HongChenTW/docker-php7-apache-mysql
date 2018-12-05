FROM php:7.1.9-apache

RUN apt-get update
RUN apt-get install zip git -y
RUN docker-php-ext-install pdo pdo_mysql
RUN curl -s https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
