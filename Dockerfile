FROM keboola/base-php
MAINTAINER Ondrej Hlavacek <ondrej.hlavacek@keboola.com>
ENV APP_VERSION 1.0.0

WORKDIR /home

# Initialize 
RUN git clone https://github.com/keboola/docker-demo-app.git ./
RUN git checkout tags/0.1.0
RUN composer install --no-interaction

ENTRYPOINT php ./src/run.php --data=/data
