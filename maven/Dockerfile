FROM 172.31.21.226/ideal/alpine-openjdk:8

# 创建者信息
MAINTAINER batizhao <zhaobati@gmail.com>

USER root

ARG MAVEN_VERSION=3.5.2
ARG USER_HOME_DIR="/root"
ARG BASE_URL=http://download.nextag.com/apache/maven/maven-3/${MAVEN_VERSION}/binaries

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
