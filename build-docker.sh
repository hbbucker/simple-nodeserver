#!/usr/bin/env bash
set -x
IMAGE_NAME="bucker/node-simpleserver"
LATEST=$(cat docker/latest.version)

if [ "${LATEST}" = "" ]; then
    LATEST=1
fi

docker tag ${IMAGE_NAME}:latest ${IMAGE_NAME}:${LATEST}
docker build -f docker/Dockerfile -t ${IMAGE_NAME}:latest .

if [ "$?" = "0" ]; then
  let LATEST=${LATEST}+1
  echo "${LATEST}" > docker/latest.version
fi


