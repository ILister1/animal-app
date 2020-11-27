#!/bin/bash

sudo docker build -t testing-img -f testing/Dockerfile .
sudo docker run -it -d --name testing-cont testing-img

sudo docker exec testing-cont pytest ./service1 --cov ./service1
sudo docker exec testing-cont pytest ./service2 --cov ./service2

sudo docker stop testing-cont
sudo docker rm testing-cont