#!/bin/bash

unset KUBECONFIG

cd .. && docker build -f docker/Dockerfile.latest \
             -t yufeiyohi/dify-on-wechat .

docker tag yufeiyohi/dify-on-wechat yufeiyohi/dify-on-wechat:$(date +%y%m%d)

docker push yufeiyohi/dify-on-wechat:$(date +%y%m%d)

docker push yufeiyohi/dify-on-wechat:latest