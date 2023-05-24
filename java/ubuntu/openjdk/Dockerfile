FROM 172.31.10.85:5000/library/ubuntu

# 创建者信息
LABEL maintainer="batizhao <zhaobati@gmail.com>"

# Install openjdk
RUN apt-get update && \
    apt-get install -y --no-install-recommends openjdk-11-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
