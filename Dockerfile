# Use the official WordPress image as a parent image
FROM wordpress:latest

# Install Xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# Install WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

