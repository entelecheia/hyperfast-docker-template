#!/bin/bash
# add your custom commands here that should be executed every time the docker container starts
echo "Starting docker container..."

# start ssh server
sudo service ssh start
# start jupyter lab
jupyter lab \
    --no-browser \
    --notebook-dir="$WORKSPACE_ROOT" \
    --ServerApp.token="$JUPYTER_TOKEN" \
    --port="$JUPYTER_PORT" \
    --ip=0.0.0.0 \
    --allow-root
