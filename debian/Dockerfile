FROM debian

LABEL maintainer="batizhao <zhaobati@gmail.com>" 

#定义时区参数
ENV TZ=Asia/Shanghai \
    DEBIAN_FRONTEND=noninteractive

RUN sed -i 's/deb.debian.org/mirrors.163.com/g' /etc/apt/sources.list \
    && ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && dpkg-reconfigure --frontend noninteractive tzdata \
    && rm -rf /var/lib/apt/lists/*

# EOF
