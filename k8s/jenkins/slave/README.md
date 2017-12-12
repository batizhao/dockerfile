## Jenkins Dockerfile

这个镜像对官方的 jenkins/jnlp-slave 进行了定制。


### Installation

* you can build an image from Dockerfile

```
docker build -t 172.31.21.226/ideal/jnlp-slave:latest .
```

### Push to harbor

```
docker push 172.31.21.226/ideal/jnlp-slave:latest
```
