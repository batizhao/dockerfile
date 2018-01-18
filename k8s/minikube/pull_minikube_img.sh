#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

DNS_VERSION=1.14.5
DEFAULTBACKEND_VERSION=1.4

ADDON_MANAGER_VERSION=kube-addon-manager:v6.4-beta.2
STORAGE_PROVISIONER_VERSION=storage-provisioner:v1.8.1

GCR_URL=gcr.io/google_containers
ALIYUN_URL=registry.cn-hangzhou.aliyuncs.com/batizhao

images=(kubernetes-dashboard-amd64:v1.8.0
defaultbackend:${DEFAULTBACKEND_VERSION}
k8s-dns-sidecar-amd64:${DNS_VERSION}
k8s-dns-kube-dns-amd64:${DNS_VERSION}
k8s-dns-dnsmasq-nanny-amd64:${DNS_VERSION}
)

for imageName in ${images[@]} ; do
  docker pull $ALIYUN_URL/$imageName
  docker tag $ALIYUN_URL/$imageName $GCR_URL/$imageName
  docker rmi $ALIYUN_URL/$imageName
done

docker pull $ALIYUN_URL/$ADDON_MANAGER_VERSION
docker tag $ALIYUN_URL/$ADDON_MANAGER_VERSION gcr.io/google-containers/$ADDON_MANAGER_VERSION
docker rmi $ALIYUN_URL/$ADDON_MANAGER_VERSION

docker pull $ALIYUN_URL/$STORAGE_PROVISIONER_VERSION
docker tag $ALIYUN_URL/$STORAGE_PROVISIONER_VERSION gcr.io/k8s-minikube/$STORAGE_PROVISIONER_VERSION
docker rmi $ALIYUN_URL/$STORAGE_PROVISIONER_VERSION

docker pull registry.cn-hangzhou.aliyuncs.com/batizhao/nginx-ingress-controller:0.9.0-beta.17
docker tag registry.cn-hangzhou.aliyuncs.com/batizhao/nginx-ingress-controller:0.9.0-beta.17 quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.9.0-beta.17
docker rmi registry.cn-hangzhou.aliyuncs.com/batizhao/nginx-ingress-controller:0.9.0-beta.17
