FROM harbor.pecado.com:8888/ideal/alpine-openjdk:8

# 创建者信息
LABEL maintainer="batizhao <zhaobati@gmail.com>"

# Define commonly used JAVA_HOME variable
ENV TOMCAT_VERSION 9.0.43

RUN set -ex && \
    apk -U upgrade && \
    apk add curl && \
    mkdir -p /opt && \
    curl -o /tmp/tomcat.tgz \
      https://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    tar xzvf /tmp/tomcat.tgz -C /opt && \
    mv /opt/apache-tomcat-${TOMCAT_VERSION} /opt/tomcat && \
    sed -i '/Valve/s/^/<!--/g' /opt/tomcat/webapps/manager/META-INF/context.xml && \
    sed -i '/Valve/s/$/-->/g' /opt/tomcat/webapps/manager/META-INF/context.xml && \
    sed -i '/allow/s/^/<!--/g' /opt/tomcat/webapps/manager/META-INF/context.xml && \
    sed -i '/allow/s/$/-->/g' /opt/tomcat/webapps/manager/META-INF/context.xml && \
    rm /tmp/tomcat.tgz && \
    rm -rf /opt/tomcat/webapps/examples && \
    rm -rf /opt/tomcat/webapps/docs && \
    rm -rf /opt/tomcat/webapps/ROOT && \
    rm -rf /tmp/* /var/cache/apk/* && \
    apk del curl

# Add admin/admin user
ADD tomcat-users.xml /opt/tomcat/conf/

ENV CATALINA_HOME /opt/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin

EXPOSE 8080
WORKDIR /opt/tomcat

# Launch Tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
