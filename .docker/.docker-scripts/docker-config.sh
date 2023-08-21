#!/bin/bash
# add your custom commands here that should be executed when building the docker image
echo "Printing docker config..."
echo "---"

set -a
# shellcheck disable=SC1091
source .docker/docker.version
# shellcheck disable=SC1091
source .docker/docker.base.env
set +a
docker-compose --project-directory . -f .docker/docker-compose.base.yaml config
