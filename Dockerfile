FROM php:apache
COPY vhost.conf /etc/apache2/sites-enabled/000-default.conf
RUN apt-get update && \
    apt-get install -y libc-client-dev libkrb5-dev && \
    docker-php-ext-configure imap --with-kerberos --with-imap-ssl && \
    docker-php-ext-install mysqli imap && \
    a2enmod rewrite
