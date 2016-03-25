FROM fferriere/base

RUN echo "deb http://packages.dotdeb.org jessie all" > /etc/apt/sources.list.d/dotdeb.list \
    && wget -O- http://www.dotdeb.org/dotdeb.gpg | apt-key add -

RUN apt-get update -y && \
    apt-get install -y php7.0-cli php7.0-readline php7.0-mysql php7.0-curl php7.0-json php7.0-gd php7.0-pgsql php7.0-intl

RUN echo 'date.timezone = Europe/Paris' >> /etc/php/7.0/cli/php.ini

USER user

VOLUME [ "/var/www" ]
WORKDIR /var/www
