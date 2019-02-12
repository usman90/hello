FROM php:fpm
RUN apt-get update -y && apt-get install -y openssl zip unzip git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo mbstring mysqli pdo pdo_mysql
WORKDIR /var/www/html
COPY . .

RUN chmod +x ./start.sh

ENTRYPOINT ./start.sh

CMD ./start.sh

