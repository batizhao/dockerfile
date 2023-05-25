FROM debian

LABEL maintainer="batizhao <zhaobati@gmail.com>" 

# sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get update && apt-get install -y tzdata locales && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata && \
    locale-gen zh_CN.UTF-8 && \
    apt-get --purge -y remove tzdata locales &&\
    apt-get clean

# 设置时区\编码
ENV LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN.UTF-8 \
    LC_CTYPE=zh_CN.UTF-8 \
    LC_ALL=zh_CN.UTF-8

# EOF
