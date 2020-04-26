## Jenkins Dockerfile

这个镜像对官方的 jenkins/jnlp-slave 进行了定制。


### Installation

* you can build an image from Dockerfile

```
docker build -t batizhao/jnlp-slave:latest .
```

### Push to harbor

```
docker push batizhao/jnlp-slave:latest
```
