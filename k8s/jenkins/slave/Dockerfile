FROM jenkins/jnlp-slave

MAINTAINER batizhao <zhaobati@gmail.com>

USER root

# 使用阿里云镜像
RUN echo '' > /etc/apt/sources.list.d/jessie-backports.list \
  && echo "deb http://mirrors.aliyun.com/debian jessie main contrib non-free" > /etc/apt/sources.list \
  && echo "deb http://mirrors.aliyun.com/debian jessie-updates main contrib non-free" >> /etc/apt/sources.list \
  && echo "deb http://mirrors.aliyun.com/debian-security jessie/updates main contrib non-free" >> /etc/apt/sources.list

# nodejs
RUN curl -sL https://deb.nodesource.com/setup_8.x

# fix error while loading shared libraries: libltdl.so.7
RUN apt-get update && \
    apt-get install -y libltdl7 nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Maven
ARG MAVEN_VERSION=3.5.2
RUN mkdir -p /opt/maven \
  && curl -o /tmp/apache-maven.tar.gz http://download.nextag.com/apache/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && tar -xzf /tmp/apache-maven.tar.gz -C /opt/maven --strip-components=1 \
  && rm -f /tmp/apache-maven.tar.gz \
  && ln -s /opt/maven/bin/mvn /usr/bin/mvn
ENV MAVEN_HOME /opt/maven

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.4/bin/linux/amd64/kubectl \
  && chmod +x ./kubectl \
  && mv ./kubectl /usr/local/bin/kubectl
