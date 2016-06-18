FROM php:7.0-apache
MAINTAINER Carles Amigó, fr3nd@fr3nd.net

RUN apt-get update && apt-get install -y \
      imagemagick \
      libav-tools \
      unzip \
      zip \
      && rm -rf /usr/share/doc/* && \
      rm -rf /usr/share/info/* && \
      rm -rf /tmp/* && \
      rm -rf /var/tmp/*

ENV H5AI_VERSION 0.28.1

RUN curl -L https://release.larsjung.de/h5ai/h5ai-${H5AI_VERSION}.zip > /usr/src/h5ai-${H5AI_VERSION}.zip && \
    unzip /usr/src/h5ai-${H5AI_VERSION}.zip && \
    rm -f /usr/src/h5ai-${H5AI_VERSION}.zip
COPY h5ai.conf /etc/apache2/conf-enabled/h5ai.conf
COPY options.json /var/www/html/_h5ai/private/conf/options.json
RUN chown www-data:www-data /var/www/html/_h5ai/private/cache
