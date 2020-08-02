#!/bin/bash
echo "-----------------Push Image-------------"
cd /home/lamvt/startalk_web
COMMIT_ID=$(git rev-parse --verify HEAD)
docker push thanhlam2396/startalk_web:$COMMIT_ID
echo "-----------------Done Push Image-------------"