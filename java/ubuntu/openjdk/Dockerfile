FROM 172.31.25.221:5000/library/ubuntu

# 创建者信息
LABEL maintainer="batizhao <zhaobati@gmail.com>"

ARG ARTHAS_VERSION="4.0.1"
ARG JDK_VERSION="17"
ARG MIRROR=false

ENV MAVEN_HOST=https://repo1.maven.org/maven2 \
  MIRROR_MAVEN_HOST=https://maven.aliyun.com/repository/public

# Install openjdk
RUN apt-get update && \
    apt-get -y install --no-install-recommends openjdk-${JDK_VERSION}-jdk && \
    if $MIRROR; then MAVEN_HOST=${MIRROR_MAVEN_HOST} ; fi && \
    wget -qO /tmp/arthas.zip "${MAVEN_HOST}/com/taobao/arthas/arthas-packaging/${ARTHAS_VERSION}/arthas-packaging-${ARTHAS_VERSION}-bin.zip" && \
    mkdir -p /opt/arthas && \
    unzip /tmp/arthas.zip -d /opt/arthas && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    java -version

# EOF