FROM alpine

LABEL maintainer="batizhao <zhaobati@gmail.com>"

ARG ARTHAS_VERSION="3.7.1"
ARG JDK_VERSION="17"
ARG MIRROR=false

ENV MAVEN_HOST=https://repo1.maven.org/maven2 \
  MIRROR_MAVEN_HOST=https://maven.aliyun.com/repository/public

RUN set -ex && \
    apk -U upgrade && \
    apk add --update openjdk${JDK_VERSION} ttf-dejavu fontconfig && \
    if $MIRROR; then MAVEN_HOST=${MIRROR_MAVEN_HOST} ; fi && \
    # download & install arthas
    wget -qO /tmp/arthas.zip "${MAVEN_HOST}/com/taobao/arthas/arthas-packaging/${ARTHAS_VERSION}/arthas-packaging-${ARTHAS_VERSION}-bin.zip" && \
    mkdir -p /opt/arthas && \
    unzip /tmp/arthas.zip -d /opt/arthas && \
    rm -rf /tmp/* /var/cache/apk/*

# EOF
