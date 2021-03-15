#!/bin/bash

# run docker login before running..

docker build -t gkr0/pcysys-hercules ./Hercules
docker push gkr0/pcysys-hercules

docker build -t gkr0/pcysys-neptune ./Neptune
docker push gkr0/pcysys-neptune