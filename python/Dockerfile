# 使用官方提供的Python开发镜像作为基础镜像
FROM python:3.7.7-alpine

# 将当前目录下的所有内容复制到/app下
ADD . /app

# 将工作目录切换为/app
WORKDIR /app

# 使用pip命令安装这个应用所需要的依赖
RUN pip install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

CMD ["python", "app.py"]