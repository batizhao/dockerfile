## Ubuntu Dockerfile


This repository contains **Dockerfile** of [Ubuntu](http://www.ubuntu.com/) for [Docker](https://www.docker.com/)'s automated build published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

### Base Docker Image

* [ubuntu:16.04](https://registry.hub.docker.com/u/library/ubuntu/)


### Installation

* Install [Docker](https://www.docker.com/).

* you can build an image from Dockerfile

```
docker build -t batizhao/ubuntu .
```

### Usage

```
docker run -p 2200:22 -it batizhao/ubuntu
```
