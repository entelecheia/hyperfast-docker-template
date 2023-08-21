#!/bin/bash
# add your custom commands here that should be executed when building the docker image
COMMAND=${1:-"build"}
VARIANT=${2:-"base"}
if [ "$COMMAND" != "build" ] && [ "$COMMAND" != "config" ] && [ "$COMMAND" != "push" ]; then
    echo "Invalid command: $COMMAND"
    echo "Usage: $0 [base|dev|prod] [build|config]"
    exit 1
fi
if [ "$COMMAND" != "build" ]; then
    echo "Building docker image for variant: ${VARIANT}"
elif [ "$COMMAND" != "push" ]; then
    echo "Printing docker config for variant: ${VARIANT}"
else
    echo "Pushing docker image for variant: ${VARIANT}"
fi
echo "---"

set -a
# shellcheck disable=SC1091
source .docker/docker.version
# shellcheck disable=SC1091,SC1090
source ".docker/docker.${VARIANT}.env"
set +a
if [ "$COMMAND" == "push" ]; then
    docker push "${CONTAINTER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}"
else
    docker-compose --project-directory . -f ".docker/docker-compose.${VARIANT}.yaml" "$COMMAND"
fi
