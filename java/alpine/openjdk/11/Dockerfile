FROM harbor.pecado.com/ideal/alpine

LABEL maintainer="batizhao <zhaobati@gmail.com>"

RUN set -ex && \
    apk -U upgrade && \
    apk add openjdk11 && \
    rm -rf /tmp/* /var/cache/apk/*

# EOF
