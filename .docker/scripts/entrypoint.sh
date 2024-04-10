#!/bin/bash
VERBOSE=${DOCKER_VERBOSE:-"false"}
# add your custom commands here that should be executed every time the docker container starts
if [ "$VERBOSE" = "true" ]; then
    set -x
    echo "Starting docker container..."

    # Print out the environment variables
    env
    echo "Fixing permissions..."
fi

### Set the USER_UID envvar to match your user.
# Ensures files created in the container are owned by you:
#   docker run --rm -it -v /some/path:/invokeai -e USER_UID=$(id -u) <this image>
# Default UID: 1000 chosen due to popularity on Linux systems. Possibly 501 on MacOS.
USER_UID=${USER_UID:-1000}
USERNAME=${USERNAME:-app}
LOCAL_UID=$(id -u "$USERNAME")
WORKSPACE_ROOT=${WORKSPACE_ROOT:-""}

if [ "$USER_UID" != "$LOCAL_UID" ]; then
    echo "Updating UID and GID to $USER_UID:$USER_UID from $LOCAL_UID:$LOCAL_UID"
    usermod -u "$USER_UID" "$USERNAME"
    groupmod -g "$USER_UID" "$USERNAME"
    echo "Changing ownership of home directory to $USER_UID:$USER_UID"
    chown -R "$USER_UID:$USER_UID" "/home/$USERNAME"
    if [ -n "$WORKSPACE_ROOT" ]; then
        echo "Changing ownership of workspace directory [$WORKSPACE_ROOT] to $USER_UID:$USER_UID"
        chown -R "$USER_UID:$USER_UID" "$WORKSPACE_ROOT"
    fi
fi

# Run the provided command
exec gosu "${USERNAME}" "$@"
