#!/bin/bash
# add your custom commands here that should be executed when building the docker image
COMMAND=${1:-"build"}
VARIANT=${2:-"base"}
RUN_COMMAND=${3:-"bash"}

if [ "${COMMAND}" == "build" ]; then
    echo "Building docker image for variant: ${VARIANT}"
elif [ "${COMMAND}" == "config" ]; then
    echo "Printing docker config for variant: ${VARIANT}"
elif [ "${COMMAND}" == "push" ]; then
    echo "Pushing docker image for variant: ${VARIANT}"
elif [ "${COMMAND}" == "up" ]; then
    echo "Starting docker container for variant: ${VARIANT}"
elif [ "${COMMAND}" == "down" ]; then
    echo "Stopping docker container for variant: ${VARIANT}"
elif [ "${COMMAND}" == "run" ]; then
    echo "Running docker container for variant: ${VARIANT}"
elif [ "${COMMAND}" == "login" ]; then
    echo "Logging into docker registry for variant: ${VARIANT}"
else
    echo "Invalid command: ${COMMAND}"
    echo "Usage: $0 [build|config|push|login|up|down|run] [base|app]"
    exit 1
fi
echo "---"

# load environment variables
set -a
# load secert environment variables from .env.secret
DOCKER_SECRET_ENV_FILENAME=${DOCKER_SECRET_ENV_FILENAME:-".env.secret"}
if [ -e "${DOCKER_SECRET_ENV_FILENAME}" ]; then
    echo "Loading secret environment variables from ${DOCKER_SECRET_ENV_FILENAME}"
    # shellcheck disable=SC1091,SC1090
    source "${DOCKER_SECRET_ENV_FILENAME}"
fi
# load global environment variables from .env.docker
DOCKERFILES_SHARE_DIR=${DOCKERFILES_SHARE_DIR:-"$HOME/.local/share/dockerfiles"}
DOCKER_GLOBAL_ENV_FILENAME=${DOCKER_GLOBAL_ENV_FILENAME:-".env.docker"}
DOCKER_GLOBAL_ENV_FILE=${DOCKER_GLOBAL_ENV_FILE:-"${DOCKERFILES_SHARE_DIR}/${DOCKER_GLOBAL_ENV_FILENAME}"}
if [ ! -e "${DOCKER_GLOBAL_ENV_FILENAME}" ] && [ -e "${DOCKER_GLOBAL_ENV_FILE}" ]; then
    echo "Symlinking ${DOCKER_GLOBAL_ENV_FILE} to ${DOCKER_GLOBAL_ENV_FILENAME}"
    ln -s "${DOCKER_GLOBAL_ENV_FILE}" "${DOCKER_GLOBAL_ENV_FILENAME}"
fi
if [ -e "${DOCKER_GLOBAL_ENV_FILENAME}" ]; then
    echo "Loading global environment variables from ${DOCKER_GLOBAL_ENV_FILENAME}"
    # shellcheck disable=SC1091,SC1090
    source "${DOCKER_GLOBAL_ENV_FILENAME}"
fi
# shellcheck disable=SC1091
source .docker/docker.version
if [ -e .docker/docker.common.env ]; then
    echo "Loading common environment variables from .docker/docker.common.env"
    # shellcheck disable=SC1091
    source .docker/docker.common.env
fi
if [ -e ".docker/docker.${VARIANT}.env" ]; then
    echo "Loading environment variables from .docker/docker.${VARIANT}.env"
    # shellcheck disable=SC1091,SC1090
    source ".docker/docker.${VARIANT}.env"
fi
set +a

# prepare docker network
if [[ -n "${CONTAINER_NETWORK_NAME}" ]] && ! docker network ls | grep -q "${CONTAINER_NETWORK_NAME}"; then
    echo "Creating network ${CONTAINER_NETWORK_NAME}"
    docker network create "${CONTAINER_NETWORK_NAME}"
else
    echo "Network ${CONTAINER_NETWORK_NAME} already exists."
fi

# run docker-compose
if [ "${COMMAND}" == "push" ]; then
    docker push "${CONTAINER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}"
elif [ "${COMMAND}" == "login" ]; then
    echo "GITHUB_CR_PAT: $GITHUB_CR_PAT"
    docker login ghcr.io -u "$GITHUB_USERNAME"
elif [ "${COMMAND}" == "run" ]; then
    docker-compose --project-directory . -f ".docker/docker-compose.${VARIANT}.yaml" run "workspace" "${RUN_COMMAND}"
else
    docker-compose --project-directory . -f ".docker/docker-compose.${VARIANT}.yaml" "${COMMAND}"
fi
