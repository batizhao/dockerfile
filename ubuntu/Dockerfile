FROM ubuntu

# 创建者信息
MAINTAINER batizhao <zhaobati@gmail.com>

# 使用阿里云镜像
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

# 设置时区\编码
ENV TZ 'Asia/Shanghai'
RUN echo $TZ > /etc/timezone && \
    apt-get update && apt-get install -y tzdata locales && \
    rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    locale-gen zh_CN.UTF-8 && \
    apt-get clean

# 设置编码
ENV LANG zh_CN.UTF-8
# ENV LANGUAGE zh_CN.UTF-8
# ENV LC_ALL zh_CN.UTF-8

# 执行以下命令
CMD ["bash"]
