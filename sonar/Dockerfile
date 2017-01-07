FROM sonarqube:latest

USER root

# get a variety of plugins

RUN set -x \
        && cd /opt/sonarqube/extensions/plugins/ \
        && wget http://sonarsource.bintray.com/Distribution/sonar-php-plugin/sonar-php-plugin-2.8.jar \
        && ls -la
