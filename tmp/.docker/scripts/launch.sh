#!/bin/bash
# add your custom commands here that should be executed every time the docker container starts
echo "Starting docker container..."

### Set the USER_UID envvar to match your user.
# Ensures files created in the container are owned by you:
#   docker run --rm -it -v /some/path:/invokeai -e USER_UID=$(id -u) <this image>
# Default UID: 1000 chosen due to popularity on Linux systems. Possibly 501 on MacOS.

echo "Fixing permissions..."
USER_UID=${USER_UID:-1000}
USER_GID=${USER_GID:-1000}
USER=${USERNAME:-app}
usermod -u "${USER_UID}" "${USER}"
groupmod -g "${USER_GID}" "${USER}"
chown --recursive "${USER_UID}:${USER_GID}" "${WORKSPACE_ROOT}"

# start ssh server
sudo service ssh start
# Clones the app repository from GitHub
if [[ "${VARIANT}" == "app" ]]; then
    if [ ! -d "${APP_INSTALL_ROOT}/${APP_CLONE_DIRNAME}" ]; then
        # clone app repo
        echo "Cloning app repo"
        echo "from ${APP_SOURCE_REPO} to ${APP_INSTALL_ROOT}/${APP_CLONE_DIRNAME}"
        git clone "https://github.com/${APP_SOURCE_REPO}.git" "$APP_INSTALL_ROOT/${APP_CLONE_DIRNAME}"
    else
        echo "App repo already cloned"
    fi
    # install app dependencies
    # pip install -r $APP_INSTALL_ROOT/$APP_CLONE_DIRNAME/requirements.txt
fi
# start jupyter notebook in background and redirect output to logfile
# change working directory to workspace root
# set token to value of JUPYTER_TOKEN
# set port to value of JUPYTER_DOCKER_PORT
if [[ -z "$(command -v jupyter)" ]]; then
    echo "Jupyter not installed. Exiting..."
    exit 1
fi
jupyter lab \
    --no-browser \
    --notebook-dir="$WORKSPACE_ROOT" \
    --ServerApp.token="$JUPYTER_TOKEN" \
    --port="$JUPYTER_PORT" \
    --ip=0.0.0.0 \
    --allow-root
