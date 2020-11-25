#!/bin/bash
docker build -f service1/Dockerfile -t service1:animalapp
docker build -f service2/Dockerfile -t service2:animalapp