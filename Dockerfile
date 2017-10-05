# Light weight Dockerfile
# Using .dockerignore to ignore certain file and directory patterns from the build context
# Files size: 252MB (At time of creating talk)

FROM debian:stretch

ARG DEBIAN_FRONTEND=noninteractive

ENV DOC_ROOT /var/www/mysite

RUN apt-get update -y \
    && \
        apt-get install -y \
            apache2 \
            libapache2-mod-php \
            php7.0 php7.0-cli php7.0-xml \
    && \
        a2enmod rewrite \
    && \
        apt-get autoremove -y --purge \
    && \
        rm -rf /var/lib/apt/lists/*

ADD config/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf

WORKDIR ${DOC_ROOT}

COPY site .

RUN chown -R www-data:www-data var

EXPOSE 80

CMD apachectl -D FOREGROUND