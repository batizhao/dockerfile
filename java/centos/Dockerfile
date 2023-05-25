FROM 172.31.10.85:5000/library/centos:7

LABEL maintainer="batizhao <zhaobati@gmail.com>"

RUN yum install -y java-11-openjdk && \
    yum clean all && \
    rm -rf /var/cache/yum

COPY --from=hengyunabc/arthas:latest /opt/arthas /opt/arthas    

CMD ["java","-version"]

# EOF
