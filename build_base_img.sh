#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

ALPINE_VERSION=latest
OPENJDK_VERSION=11
ORACLE_JDK_VERSION=8
TOMCAT_VERSION=9-jdk8
MAVEN_VERSION=latest

HUB_URL=172.31.10.85:5000/library
# HUB_URL=batizhao

cd alpine
docker build -t $HUB_URL/alpine:${ALPINE_VERSION} .
docker push $HUB_URL/alpine:${ALPINE_VERSION}

cd ../java/alpine/openjdk
docker build -t $HUB_URL/alpine-openjdk:${OPENJDK_VERSION} .
docker push $HUB_URL/alpine-openjdk:${OPENJDK_VERSION}

# cd ../java/centos/oracle/${ORACLE_JDK_VERSION}
# docker build -t $HUB_URL/centos7-jdk:${ORACLE_JDK_VERSION} .
# docker push $HUB_URL/centos7-jdk:${ORACLE_JDK_VERSION}

# cd ../../../../tomcat
# docker build -t $HUB_URL/tomcat:${TOMCAT_VERSION} .
# docker push $HUB_URL/tomcat:${TOMCAT_VERSION}

# cd ../maven
# docker build -t $HUB_URL/maven:${MAVEN_VERSION} .
# docker push $HUB_URL/maven:${MAVEN_VERSION}
