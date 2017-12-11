FROM 172.31.21.226/ideal/ubuntu

# 创建者信息
MAINTAINER batizhao <zhaobati@gmail.com>

# Install openjdk
RUN apt-get update && \
    apt-get install -y --no-install-recommends openjdk-8-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
