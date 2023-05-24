FROM 172.31.10.85:5000/library/debian

LABEL maintainer="batizhao <zhaobati@gmail.com>"

RUN apt-get update \
    && apt-get -y install --no-install-recommends ca-certificates openjdk-11-jdk \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && java --version

# EOF
