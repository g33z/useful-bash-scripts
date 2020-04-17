#!/bin/bash

DOCKER_BASE_DIR="/PATH/TO/DOCKER/DIR"
cd ${DOCKER_BASE_DIR}
for D in *; do
    if [ -d "${D}" ]; then
        cd ${D} && docker-compose pull && docker-compose up -d && cd ..
    fi
done