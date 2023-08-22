#!/bin/bash
# add your custom commands here that should be executed every time the docker container starts
echo "Starting docker container..."

# start ssh server
sudo service ssh start
# Clones the app repository from GitHub
if [[ "${VARIANT}" == "app" ]]; then
    if [ ! -d "$APP_INSTALL_ROOT/$APP_CLONE_DIRNAME" ]; then
        # clone app repo
        git clone "https://github.com/$APP_SOURCE_REPO.git" $APP_INSTALL_ROOT/$APP_CLONE_DIR
    else
        echo "App repo already cloned"
    fi
    # install app dependencies
    # pip install -r $APP_INSTALL_ROOT/$APP_CLONE_DIR/requirements.txt
fi
# start jupyter notebook in background and redirect output to logfile
# change working directory to workspace root
# set token to value of JUPYTER_TOKEN
# set port to value of JUPYTER_DOCKER_PORT
jupyter lab \
    --no-browser \
    --notebook-dir="$WORKSPACE_ROOT" \
    --ServerApp.token="$JUPYTER_TOKEN" \
    --port="$JUPYTER_PORT" \
    --ip=0.0.0.0 \
    --allow-root
