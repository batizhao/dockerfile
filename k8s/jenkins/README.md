## Jenkins Dockerfile

### Base Docker Image

* [jenkins:lts](https://hub.docker.com/r/jenkins/jenkins/)


### Installation

* you can build an image from Dockerfile

```
docker build -t 172.31.21.226/ideal/jenkins:lts .
```

### Push to harbor

```
docker push 172.31.21.226/ideal/jenkins:lts
```

### Deploy on k8s

```
kubectl create secret ...

kubectl apply -f ./
```
