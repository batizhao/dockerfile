FROM debian

LABEL maintainer="batizhao <zhaobati@gmail.com>" 

RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
    apt-get update && apt-get install -y tzdata language-pack-zh-hans-base language-pack-zh-hans && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone && \
    dpkg-reconfigure -f noninteractive locales tzdata && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENV LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh:en_US:en \
    LC_ALL=zh_CN.UTF-8

# EOF
