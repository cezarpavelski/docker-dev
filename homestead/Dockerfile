FROM shincoder/homestead:php7.0

USER root

ADD serve.sh /serve.sh
ADD mongoHomestead7.sh /mongoHomestead7.sh

RUN chmod +x /serve.sh

RUN cd / \
    && ./serve.sh fair.local /var/www/fair-system/public \
    && ./serve.sh auth.local /var/www/authentication/public \
    && ./serve.sh api.local /var/www/back-admin-system/public \
    && ./serve.sh worker.local /var/www/worker/public \
    && ./serve.sh statistic.local /var/www/statistics-api/public \
    && ./serve.sh socket.local /var/www/socket-server \
    && ./serve.sh notification.local /var/www/notification/public \
    && ./serve.sh notification-socket.local /var/www/notification-socket \
    && ./serve.sh admin.local /var/www/front-admin-system/dist \
    && ./serve.sh chat.local /var/www/chat/public \
    && apt-get purge php-redis -y \
    && ./mongoHomestead7.sh
