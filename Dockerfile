FROM wordpress:cli

RUN set -x \
    && deluser www-data
    && addgroup -g 500 -S www-data \
    && adduser -u 500 -D -S -h /var/www www-data www-data

USER www-data
