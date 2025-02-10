FROM 172.31.25.221:5000/library/openjdk17-ubuntu22

# 创建者信息
LABEL maintainer="batizhao <zhaobati@gmail.com>"

# Define commonly used JAVA_HOME variable
ENV TOMCAT_VERSION=10.1.34

RUN set -ex && \
    apt-get update && \
    apt-get install -y curl libapr1 libapr1-dev libtcnative-1 && \
    mkdir -p /opt && \
    curl -o /tmp/tomcat.tgz \
      https://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-10/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
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
    rm -rf /tmp/* /var/cache/apt-get/* && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Add admin/admin user
ADD tomcat-users.xml /opt/tomcat/conf/

ENV CATALINA_HOME=/opt/tomcat
ENV PATH=$PATH:$CATALINA_HOME/bin

EXPOSE 8080
WORKDIR /opt/tomcat

# Launch Tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
