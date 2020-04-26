## Jenkins Dockerfile

### Base Docker Image

* [jenkins:lts](https://hub.docker.com/r/jenkins/jenkins/)


### Installation

* you can build an image from Dockerfile

```
docker build -t batizhao/jenkins:lts .
```

### Push to harbor

```
docker push batizhao/jenkins:lts
```

### Deploy on k8s

```
kubectl create secret ...

kubectl apply -f ./
```
