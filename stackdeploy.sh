#!/bin/bash
sudo docker-compose build
sudo docker-compose push
sudo docker stack deploy --compose-file docker-compose.yaml animal-app

