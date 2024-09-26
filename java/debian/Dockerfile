FROM 172.31.25.221:5000/library/debian

LABEL maintainer="batizhao <zhaobati@gmail.com>"

RUN apt-get update \
    && apt-get -y install --no-install-recommends openjdk-17-jdk \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && java -version

COPY --from=hengyunabc/arthas:latest /opt/arthas /opt/arthas
# EOF
