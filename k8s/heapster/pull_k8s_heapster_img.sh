#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

GCR_URL=gcr.io/google_containers
ALIYUN_URL=registry.cn-hangzhou.aliyuncs.com/batizhao

images=(heapster-amd64:v1.4.0
heapster-grafana-amd64:v4.4.3
heapster-influxdb-amd64:v1.3.3)


for imageName in ${images[@]} ; do
  docker pull $ALIYUN_URL/$imageName
  docker tag $ALIYUN_URL/$imageName $GCR_URL/$imageName
  docker rmi $ALIYUN_URL/$imageName
done
