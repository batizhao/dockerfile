## Ubuntu Dockerfile


This repository contains **Dockerfile** of [Ubuntu](http://www.ubuntu.com/) for [Docker](https://www.docker.com/)'s automated build published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

### Base Docker Image

* [ubuntu:16.04](https://registry.hub.docker.com/u/library/ubuntu/)


### Installation

* Install [Docker](https://www.docker.com/).

* Download from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull batizhao/ubuntu`

> alternatively, you can build an image from Dockerfile: `docker build -t="batizhao/ubuntu:16.04" github.com/batizhao/dockerfile-ubuntu`


### Usage

    docker run -it batizhao/ubuntu:16.04
