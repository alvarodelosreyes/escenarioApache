FROM php:7.4-apache
RUN apt update
RUN apt upgrade
RUN a2enmod auth_basic
RUN a2enmod auth_digest
RUN a2enmod status
RUN a2enmod info 
RUN service apache2 restart

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data

RUN chmod 700 /etc/apache2/passserver
RUN chmod 700 /etc/apache2/password.txt
RUN chmod 700 /var/www/html
