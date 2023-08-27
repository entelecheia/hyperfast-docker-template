#!/bin/bash
# add your custom commands here that should be executed when building the docker image
COMMAND=${1:-"build"}
COMPOSE_VARIANT=${2:-"base"}
RUN_COMMAND=${3:-"bash"}

if [ "${COMMAND}" == "build" ]; then
    echo "Building docker image for variant: ${COMPOSE_VARIANT}"
elif [ "${COMMAND}" == "config" ]; then
    echo "Printing docker config for variant: ${COMPOSE_VARIANT}"
elif [ "${COMMAND}" == "push" ]; then
    echo "Pushing docker image for variant: ${COMPOSE_VARIANT}"
elif [ "${COMMAND}" == "up" ]; then
    echo "Starting docker container for variant: ${COMPOSE_VARIANT}"
elif [ "${COMMAND}" == "down" ]; then
    echo "Stopping docker container for variant: ${COMPOSE_VARIANT}"
elif [ "${COMMAND}" == "run" ]; then
    echo "Running docker container for variant: ${COMPOSE_VARIANT}"
elif [ "${COMMAND}" == "login" ]; then
    echo "Logging into docker registry for variant: ${COMPOSE_VARIANT}"
else
    echo "Invalid command: ${COMMAND}"
    echo "Usage: $0 [build|config|push|login|up|down|run] [base|app]"
    exit 1
fi
echo "---"

# load environment variables
set -a
# load secert environment variables from .env.secret
if [ -f .env.secret ]; then
    # shellcheck disable=SC1091
    source .docker/.env.secret
fi
# shellcheck disable=SC1091
source .docker/docker.version
# shellcheck disable=SC1091,SC1090
source ".docker/docker.${COMPOSE_VARIANT}.env"
set +a

# prepare docker network
if [[ -z "$(docker network ls | grep "${DOCKER_NETWORK_NAME}")" ]]; then
    echo "Creating network ${DOCKER_NETWORK_NAME}"
    docker network create "${DOCKER_NETWORK_NAME}"
else
    echo "Network ${DOCKER_NETWORK_NAME} already exists."
fi

# run docker-compose
if [ "${COMMAND}" == "push" ]; then
    docker push "${CONTAINTER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}"
elif [ "${COMMAND}" == "login" ]; then
    echo "GITHUB_CR_PAT: $GITHUB_CR_PAT"
    docker login ghcr.io -u "$GITHUB_USERNAME"
elif [ "${COMMAND}" == "run" ]; then
    docker-compose --project-directory . -f ".docker/docker-compose.${COMPOSE_VARIANT}.yaml" run workspace "${RUN_COMMAND}"
else
    docker-compose --project-directory . -f ".docker/docker-compose.${COMPOSE_VARIANT}.yaml" "${COMMAND}"
fi
