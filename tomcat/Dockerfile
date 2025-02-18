FROM 172.31.25.221:5000/library/openjdk17-ubuntu24 AS builder

# 创建者信息
LABEL maintainer="batizhao <zhaobati@gmail.com>"

# Define commonly used JAVA_HOME variable
ENV TOMCAT_VERSION=9.0.100

RUN set -ex && \
    apt-get update && \
    apt-get install -y curl && \
    mkdir -p /opt && \
    curl -o /tmp/tomcat.tgz \
      https://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    tar xzvf /tmp/tomcat.tgz -C /opt && \
    mv /opt/apache-tomcat-${TOMCAT_VERSION} /opt/tomcat && \
    sed -i -e '/Valve\|allow/s/^/<!--/g' -e '/Valve\|allow/s/$/-->/g' /opt/tomcat/webapps/manager/META-INF/context.xml && \
    rm -rf /tmp/tomcat.tgz /opt/tomcat/webapps/examples /opt/tomcat/webapps/docs /opt/tomcat/webapps/ROOT

FROM 172.31.25.221:5000/library/openjdk17-ubuntu24

RUN apt-get update && \
    apt-get install -y libapr1 libapr1-dev libtcnative-1 && \
    rm -rf /tmp/* /var/cache/apt-get/* && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY --from=builder /opt/tomcat /opt/tomcat

# Add admin/admin user
ADD tomcat-users.xml /opt/tomcat/conf/

ENV CATALINA_HOME=/opt/tomcat
ENV PATH=$PATH:$CATALINA_HOME/bin

EXPOSE 8080
WORKDIR /opt/tomcat

CMD ["/opt/tomcat/bin/catalina.sh", "run"]