#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

docker pull registry.cn-hangzhou.aliyuncs.com/batizhao/nginx-ingress-controller:0.9.0
docker tag registry.cn-hangzhou.aliyuncs.com/batizhao/nginx-ingress-controller:0.9.0 quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.9.0
docker rmi registry.cn-hangzhou.aliyuncs.com/batizhao/nginx-ingress-controller:0.9.0

docker pull registry.cn-hangzhou.aliyuncs.com/batizhao/defaultbackend:1.4
docker tag registry.cn-hangzhou.aliyuncs.com/batizhao/defaultbackend:1.4 gcr.io/google_containers/defaultbackend:1.4
docker rmi registry.cn-hangzhou.aliyuncs.com/batizhao/defaultbackend:1.4
