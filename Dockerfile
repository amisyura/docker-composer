FROM composer/composer
RUN mkdir /root/.ssh && echo "StrictHostKeyChecking no " > /root/.ssh/config
