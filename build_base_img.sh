#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

UBUNTU_VERSION=latest
OPENJDK_VERSION=8
TOMCAT_VERSION=8
MAVEN_VERSION=3.5.2-jdk-8

HUB_URL=172.31.21.226/ideal

images=(
openjdk:${OPENJDK_VERSION}

maven:${MAVEN_VERSION})

cd ubuntu
docker build -t $HUB_URL/ubuntu:${UBUNTU_VERSION} .
docker push $HUB_URL/ubuntu:${UBUNTU_VERSION}

cd ../java/openjdk/8
docker build -t $HUB_URL/openjdk:${OPENJDK_VERSION} .
docker push $HUB_URL/openjdk:${OPENJDK_VERSION}

cd ../../../tomcat
docker build -t $HUB_URL/tomcat:${TOMCAT_VERSION} .
docker push $HUB_URL/tomcat:${TOMCAT_VERSION}

cd ../maven
docker build -t $HUB_URL/maven:${MAVEN_VERSION} .
docker push $HUB_URL/maven:${MAVEN_VERSION}
