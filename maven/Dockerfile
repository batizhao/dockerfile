FROM 172.31.25.221:5000/library/alpine-openjdk:11

# 创建者信息
LABEL maintainer="batizhao <zhaobati@gmail.com>"

USER root

ARG MAVEN_VERSION=3.9.1
ARG USER_HOME_DIR="/root"
ARG BASE_URL=https://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/${MAVEN_VERSION}/binaries

RUN set -ex && \
    apk -U upgrade && \
    apk add curl && \
    mkdir -p /opt/maven && \
    curl -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    tar -xzf /tmp/apache-maven.tar.gz -C /opt/maven --strip-components=1 && \
    rm -f /tmp/apache-maven.tar.gz && \
    ln -s /opt/maven/bin/mvn /usr/bin/mvn && \
    rm -rf /tmp/* /var/cache/apk/* && \
    apk del curl

ENV MAVEN_HOME /opt/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"

COPY settings.xml /root/.m2/settings.xml

CMD ["mvn"]
