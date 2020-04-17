#!/bin/bash

DOCKER_BASE_DIR="/PATH_TO_DOCKER_FOLDER"
cd ${DOCKER_BASE_DIR}
for D in *; do
    if [ -d "${D}" ]; then
        cd ${D}
        echo "I am in $(pwd)"
        if [ -f "./docker-compose.yaml" ]; then
            echo "I found a docker-compose.yaml, updating ..."
            docker-compose pull && docker-compose up -d && cd ..
        else
            echo "No docker-compose.yaml found, stepping back"
            cd ..
        fi
    fi
done