FROM fferriere/base

RUN apt-get install -y php5-cli php5-readline php5-json php5-curl php5-pgsql php5-mysqlnd php5-intl --no-install-recommends

RUN echo 'date.timezone = Europe/Paris' >> /etc/php5/cli/php.ini

USER user

VOLUME ["/var/www"]
WORKDIR /var/www

ENTRYPOINT ["/usr/bin/php"]
CMD ["-a"]
