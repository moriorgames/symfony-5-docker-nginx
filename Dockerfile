FROM php:7.4.5-fpm

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN mkdir -p /app

COPY . .

RUN php phars/composer.phar install --no-ansi --no-interaction --optimize-autoloader

EXPOSE 9000

ENTRYPOINT ["/usr/local/bin/docker-php-entrypoint", "-F"]
