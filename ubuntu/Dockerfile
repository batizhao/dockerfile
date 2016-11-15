# Docker file for ubuntu 16
FROM ubuntu:16.04

# 创建者信息
MAINTAINER batizhao <zhaobati@gmail.com>

# 使用阿里云镜像
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

# 安装基础工具包
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y vim openssh-server supervisor && \
  rm -rf /var/lib/apt/lists/*

# 创建 ssh 和 supervisor 目录
RUN mkdir -p /var/run/sshd
RUN mkdir -p /var/log/supervisor

# 设置 root ssh 远程登录密码为 password
RUN echo "root:password" | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# 添加 supervisor 的配置文件
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# 开放 SSH 22 端口
EXPOSE 22

# 执行以下命令
CMD ["/usr/bin/supervisord"]
