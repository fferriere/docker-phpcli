FROM debian:wheezy

ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux

RUN apt-get update -y && \
    apt-get install -y locales curl wget --no-install-recommends

RUN echo 'deb http://packages.dotdeb.org wheezy-php55 all' >> /etc/apt/sources.list
RUN wget http://www.dotdeb.org/dotdeb.gpg
RUN apt-key add dotdeb.gpg

RUN apt-get update -y && \
    apt-get install -y php5-cli php5-readline php5-json php5-curl php5-pgsql php5-mysqlnd php5-intl --no-install-recommends

RUN echo "Europe/Paris" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata && \
    sed -i "s/^# fr_FR/fr_FR/" /etc/locale.gen && \
    locale-gen && \
    update-locale LANG=fr_FR.UTF-8

RUN echo 'date.timezone = Europe/Paris' >> /etc/php5/cli/php.ini

RUN useradd --create-home user

USER user

VOLUME ['/var/www']
WORKDIR /var/www

