#!/bin/bash

# our docker base folder
DOCKER_BASE_DIR="/home/user/docker"
# folders to exclude from udpate
DIRS_TO_EXCLUDE=("code" "snacklish")
# docker-compose binary location
DC=$(which docker-compose)

cd ${DOCKER_BASE_DIR}
for D in *; do
    # if is directory and not excluded
    if ([ -d "${D}" ] && [[ ! " ${DIRS_TO_EXCLUDE[@]} " =~ " ${D} " ]]); then
        cd ${D}
        echo "I am in $(pwd)"
        if [ -f "./docker-compose.yaml" ]; then
            echo "I found a docker-compose.yaml, updating ..."
            ${DC} pull && ${DC} up -d && cd ..
        else
            echo "No docker-compose.yaml found, stepping back"
            cd ..
        fi
    fi
done