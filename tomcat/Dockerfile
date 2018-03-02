FROM 172.31.21.226/ideal/alpine-openjdk:8

# 创建者信息
MAINTAINER batizhao <zhaobati@gmail.com>

# Define commonly used JAVA_HOME variable
ENV TOMCAT_VERSION 8.5.28

RUN set -ex && \
    apk -U upgrade && \
    apk add curl && \
    mkdir -p /opt && \
    curl -o /tmp/tomcat.tgz \
      http://download.nextag.com/apache/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    tar xzvf /tmp/tomcat.tgz -C /opt && \
    mv /opt/apache-tomcat-${TOMCAT_VERSION} /opt/tomcat && \
    rm /tmp/tomcat.tgz && \
    rm -rf /opt/tomcat/webapps/examples && \
    rm -rf /opt/tomcat/webapps/docs && \
    rm -rf /opt/tomcat/webapps/ROOT && \
    rm -rf /tmp/* /var/cache/apk/* && \
    apk del curl

# Add admin/admin user
ADD tomcat-users.xml /opt/tomcat/conf/

# Tomcat 8.5 要注释 manage 的 ip 限制
RUN sed -i '/Valve/s/^/<!--/g' /opt/tomcat/webapps/manager/META-INF/context.xml
RUN sed -i '/Valve/s/$/-->/g' /opt/tomcat/webapps/manager/META-INF/context.xml
RUN sed -i '/allow/s/^/<!--/g' /opt/tomcat/webapps/manager/META-INF/context.xml
RUN sed -i '/allow/s/$/-->/g' /opt/tomcat/webapps/manager/META-INF/context.xml

ENV CATALINA_HOME /opt/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin

EXPOSE 8080
WORKDIR /opt/tomcat

# Launch Tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
