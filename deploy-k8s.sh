#!/bin/bash
echo "-----------------Deploy k8s-------------"
cd /home/lamvt/startalk_web
COMMIT_ID=$(git rev-parse --verify HEAD)
cd /home/k8s-startalk/startalk-web
version=$(cat web-deployment.yaml | grep "thanhlam2396/startalk_web" | awk -F ':' '{print $3}')
enviroment=$(cat web-deployment.yaml | grep "version" | awk -F '-' '{print $2}')
sed -i '/$version/$COMMIT_ID/' /opt/k8s-startalk/startalk-web/web-deployment.yaml
sed -i '/$enviroment/$COMMIT_ID/' /opt/k8s-startalk/startalk-web/web-deployment.yaml
kubectl apply -f web-deployment.yaml
echo "-----------------Done Deploy k8s-------------"