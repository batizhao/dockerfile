FROM batizhao/ubuntu

# 创建者信息
MAINTAINER batizhao <zhaobati@gmail.com>

# Install dependencies
RUN apt-get update && \
    apt-get install -y software-properties-common

ENV JAVA_VER 8

RUN \
    echo oracle-java${JAVA_VER}-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && \
    apt-get install -y --no-install-recommends oracle-java${JAVA_VER}-installer oracle-java${JAVA_VER}-set-default && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk${JAVA_VER}-installer

ENV JAVA_HOME /usr/lib/jvm/java-${JAVA_VER}-oracle
