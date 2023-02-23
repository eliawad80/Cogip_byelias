FROM php:8.2.1-apache-bullseye

RUN apt-get update
RUN  docker-php-ext-install mysqli
RUN a2enmod rewrite
COPY website/src/ /var/www/html
RUN apt install nano
COPY apache2.conf /etc/apache2/
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN chown -R www-data:www-data /var/www/
RUN chmod -R 775 /var/www/
RUN service apache2 restart
EXPOSE 80
CMD ["apache2-foreground"]




# FROM php:8.2.1-apache-bullseye

# # RUN apk add --no-cache  apache2 && apk add apache2-utils && apk add  apache2-ssl && apk add libxml2-dev && apk add libzip-dev && apk add mysqli 
# # RUN  docker-php-ext-install -j$(nproc) 
# RUN  docker-php-ext-install  mysqli 
# #     # pdo_mysql \
# #     # soap \
# #     # && docker-php-ext-configure zip --with-libzip \
# # #     # && docker-php-ext-install zip
# RUN a2enmod rewrite
# RUN service apache2 restart
# # RUN a2enmod php8
# RUN docker-php-ext-enable mysqli 
# RUN service apache2 restart

# COPY mywebsite/. /var/www/html/

# RUN chown -R apache:apache /var/www/html/
# RUN chown -R www-data:www-data /var/www/html/
# RUN chmod  -R 775 /var/www/html/
# COPY apache2.conf /etc/apache2/
# RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
# # #RUN rm -rf /var/cache/apk/*
# # # WORKDIR /var/www/html/
# EXPOSE 80

# CMD ["apache2-foreground"]




















# FROM alpine:3.12

# RUN apk update && \
#     apk add --no-cache apache2 php7 php7-mysqli && \
#     rm -rf /var/cache/apk/*


# COPY mywebsite /var/www/localhost/htdocs/

# RUN wget https://raw.githubusercontent.com/php/php-src/PHP-7.4.x/php.ini-development -O /etc/php7/php.ini

# EXPOSE 80

# CMD ["httpd", "-D", "FOREGROUND"]

