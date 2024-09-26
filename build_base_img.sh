#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

ALPINE_VERSION=latest
OPENJDK_VERSION=17
# ORACLE_JDK_VERSION=8
# TOMCAT_VERSION=9-jdk8
MAVEN_VERSION=latest

# SRC_URL=172.31.25.221:5000/library
HUB_URL=172.31.25.221:5000/library
# HUB_URL=batizhao

cd alpine
docker build -t $HUB_URL/alpine:${ALPINE_VERSION} .
docker push $HUB_URL/alpine:${ALPINE_VERSION}

cd ../java/alpine
docker build -t $HUB_URL/openjdk${OPENJDK_VERSION}-alpine .
docker push $HUB_URL/openjdk${OPENJDK_VERSION}-alpine

# cd ../java/centos/oracle/${ORACLE_JDK_VERSION}
# docker build -t $HUB_URL/centos7-jdk:${ORACLE_JDK_VERSION} .
# docker push $HUB_URL/centos7-jdk:${ORACLE_JDK_VERSION}

# cd ../../../../tomcat
# docker build -t $HUB_URL/tomcat:${TOMCAT_VERSION} .
# docker push $HUB_URL/tomcat:${TOMCAT_VERSION}

# cd ../maven
# docker build -t $HUB_URL/maven:${MAVEN_VERSION} .
# docker push $HUB_URL/maven:${MAVEN_VERSION}

# docker pull $SRC_URL/stalber:master_20240904032654_b95b8f0b_13
# docker tag $SRC_URL/stalber:master_20240904032654_b95b8f0b_13 $HUB_URL/stalber:master_20240904032654_b95b8f0b_13
# docker push $HUB_URL/stalber:master_20240904032654_b95b8f0b_13