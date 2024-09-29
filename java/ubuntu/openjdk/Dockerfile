FROM 172.31.25.221:5000/library/ubuntu

# 创建者信息
LABEL maintainer="batizhao <zhaobati@gmail.com>"

# Install openjdk
RUN apt-get update \
    && apt-get -y install --no-install-recommends openjdk-17-jdk \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && java -version

COPY --from=172.31.25.221:5000/library/arthas:latest /opt/arthas /opt/arthas
# EOF