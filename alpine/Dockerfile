FROM alpine

LABEL maintainer="batizhao <zhaobati@gmail.com>" 

RUN set -ex && \
    apk -U upgrade && \
    apk add bash tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    date && \
    apk del tzdata && \
    rm -rf /tmp/* /var/cache/apk/*

ENV LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN.UTF-8 \
    LC_CTYPE=zh_CN.UTF-8 \
    LC_ALL=zh_CN.UTF-8

# EOF
