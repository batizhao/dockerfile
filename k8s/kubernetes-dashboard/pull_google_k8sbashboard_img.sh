#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

KUBE_DASHBOARD_VERSION=v1.7.1

GCR_URL=gcr.io/google_containers
ALIYUN_URL=registry.cn-hangzhou.aliyuncs.com/batizhao

images=(kubernetes-dashboard-amd64:${KUBE_DASHBOARD_VERSION}
kubernetes-dashboard-init-amd64:v1.0.0)

for imageName in ${images[@]} ; do
  docker pull $ALIYUN_URL/$imageName
  docker tag $ALIYUN_URL/$imageName $GCR_URL/$imageName
  docker rmi $ALIYUN_URL/$imageName
done
