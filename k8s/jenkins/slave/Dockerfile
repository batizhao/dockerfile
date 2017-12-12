FROM jenkins/jnlp-slave

MAINTAINER batizhao <zhaobati@gmail.com>

USER root

# Install Maven
ARG MAVEN_VERSION=3.5.2
RUN mkdir -p /opt/maven \
  && curl -o /tmp/apache-maven.tar.gz http://download.nextag.com/apache/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && tar -xzf /tmp/apache-maven.tar.gz -C /opt/maven --strip-components=1 \
  && rm -f /tmp/apache-maven.tar.gz \
  && ln -s /opt/maven/bin/mvn /usr/bin/mvn
ENV MAVEN_HOME /opt/maven

COPY settings.xml /root/.m2/settings.xml
