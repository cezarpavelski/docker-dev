FROM mysql:5.7

USER root

RUN mysql_upgrade -u root -p "$MYSQL_ROOT_PASSWORD"  --force
