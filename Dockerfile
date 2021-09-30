FROM mediawiki:1.35

RUN apt-get update && apt-get install -y \
      unzip \
      libzip-dev
RUN docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

COPY composer.local.json .
RUN composer update --no-dev
