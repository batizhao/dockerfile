FROM batizhao/ubuntu

# 创建者信息
MAINTAINER batizhao <zhaobati@gmail.com>

# Install openjdk
RUN apt-get update && \
    apt-get install -y --no-install-recommends openjdk-8-jre-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
