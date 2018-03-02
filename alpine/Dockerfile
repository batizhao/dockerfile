FROM alpine

MAINTAINER batizhao <zhaobati@gmail.com>
# thanks to Anastas Dancha <anapsix@random.io>

ENV TZ='Asia/Shanghai' \
    LANG=zh_CN.UTF-8

RUN set -ex && \
    apk -U upgrade && \
    apk add bash tzdata && \
    cp /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    date && \
    ( /usr/glibc-compat/bin/localedef -i zh_CN -f UTF-8 zh_CN.UTF-8 || true ) && \
    echo "export LANG=zh_CN.UTF-8" > /etc/profile.d/locale.sh && \
    apk del tzdata && \
    rm -rf /tmp/* /var/cache/apk/*

# EOF
