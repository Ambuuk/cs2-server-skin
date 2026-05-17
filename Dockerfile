FROM php:8.2-apache

RUN a2dismod mpm_event mpm_worker || true

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    && docker-php-ext-install pdo pdo_mysql mysqli curl

COPY . /var/www/html/