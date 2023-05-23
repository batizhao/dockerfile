FROM centos:7

LABEL maintainer="batizhao <zhaobati@gmail.com>" 

#定义时区参数
ENV TZ=Asia/Shanghai
RUN sed -e 's|^mirrorlist=|#mirrorlist=|g' -e 's|^#baseurl=http://mirror.centos.org/centos|baseurl=https://mirrors.ustc.edu.cn/centos|g' -i.bak /etc/yum.repos.d/CentOS-Base.repo \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo '$TZ' > /etc/timezone \
    && yum -y install kde-l10n-Chinese glibc-common \
    && localedef -c -f UTF-8 -i zh_CN zh_CN.utf8
ENV LC_ALL zh_CN.utf8



# EOF
