FROM harbor.pecado.com:8888/ideal/alpine

LABEL maintainer="batizhao <zhaobati@gmail.com>"

RUN set -ex && \
    apk -U upgrade && \
    apk add openjdk8 && \
    rm -rf /tmp/* /var/cache/apk/*

# EOF
