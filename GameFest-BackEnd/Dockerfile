FROM php:8.2-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Enable mod_rewrite for .htaccess
RUN a2enmod rewrite

# Copy source code
COPY . /var/www/html/

# Fix RewriteBase for Docker environment (root)
RUN sed -i 's|RewriteBase /~dw2t_alexis_josue/GameFest-BackEnd/|RewriteBase /|g' /var/www/html/.htaccess

# Copy and set entrypoint
COPY entrypoint.sh /usr/local/bin/
RUN sed -i 's/\r$//' /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

EXPOSE 80

ENTRYPOINT ["entrypoint.sh"]
