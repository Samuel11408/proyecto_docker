# Imagen base con Apache
FROM php:8.2-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN a2enmod rewrite && \
    sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

# Copiamos los archivos de la app al contenedor
COPY ./ALL /var/www/html

# Exponemos el puerto 80
EXPOSE 80
