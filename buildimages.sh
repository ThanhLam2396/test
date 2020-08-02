#!/bin/bash
echo "-----------------Build Image-------------"
cd /home/lamvt/startalk_web
docker build --network host -t thanhlam2396/startalk_web -f Dockerfile.prod 
echo "-----------------Done Build Image-------------"