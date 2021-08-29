ARG BUILD_FROM
FROM $BUILD_FROM
ARG BASHIO_VERSION=0.12.1
ARG MEGAD_SCRIPT_URL=http://ab-log.ru/files/File/megad-cfg/megad-cfg-2561.zip
ENV LANG C.UTF-8

#    && curl -L -f -s "$MEGAD_SCRIPT_URL" > megad.zip \
#    && unzip megad.zip \
#    && rm megad.zip \
RUN mkdir -p /usr/src/bashio \
    && apk add --no-cache bash jq \
    && curl -L -f -s "https://github.com/hassio-addons/bashio/archive/v${BASHIO_VERSION}.tar.gz" \
        | tar -xzf - --strip 1 -C /usr/src/bashio \
    && mv /usr/src/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio \
    && docker-php-ext-install sockets

COPY run.sh /
RUN chmod a+x /run.sh

USER root
CMD [ "/run.sh" ]
