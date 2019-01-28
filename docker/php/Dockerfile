FROM php:7.3-cli

# Install opcache
RUN docker-php-ext-install opcache

# install xdebug
RUN pecl install xdebug-2.7.0beta1  && docker-php-ext-enable xdebug

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /app
