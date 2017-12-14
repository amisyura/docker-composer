FROM php:fpm

LABEL maintainer="misuraa@gmail.com"

RUN apt-get update && apt-get install -y \
    libmcrypt-dev \
    libpq-dev \
    git \
    zip \
    unzip \ 
    php-pclzip

RUN docker-php-ext-install \
    mbstring \
    exif \
    opcache \
    pgsql \
    pdo_pgsql

RUN mkdir /root/.ssh && echo "StrictHostKeyChecking no " > /root/.ssh/config

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN mkdir /app

WORKDIR /app

#RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
#    && docker-php-ext-install pgsql pdo_pgsql

ENTRYPOINT ["composer"]

CMD ["composer"]
