FROM php:7.1.9-apache

RUN apt-get update
RUN docker-php-ext-install pdo pdo_mysql
