FROM mediawiki:1.37

RUN apt-get update && apt-get install -y \
      unzip \
      libzip-dev
RUN docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

COPY composer.local.json .
RUN composer config --no-plugins allow-plugins.composer/installers true
RUN composer update --no-dev --optimize-autoloader
