# Sets the base image for subsequent instructions
ARG ARG_BUILD_FROM="ghcr.io/entelecheia/hyperfast-docker:latest-base"
FROM $ARG_BUILD_FROM

# Setting ARGs and ENVs for user creation and workspace setup
ARG ARG_USERNAME="app"
ARG ARG_USER_UID=9001
ARG ARG_USER_GID=$ARG_USER_UID
ARG ARG_WORKSPACE_ROOT="/workspace"
ENV USERNAME $ARG_USERNAME
ENV USER_UID $ARG_USER_UID
ENV USER_GID $ARG_USER_GID
ENV WORKSPACE_ROOT $ARG_WORKSPACE_ROOT

# Sets up the workspace for the user
RUN if [ ! -d $WORKSPACE_ROOT/projects ]; then mkdir -p $WORKSPACE_ROOT/projects; fi

# Setting ARGs and ENVs for the app
ARG ARG_APP_SOURCE_REPO="entelecheia/entelecheia"
ARG ARG_APP_INSTALL_ROOT="/workspace/projects"
ARG ARG_APP_DIRNAME="entelecheia"
ARG ARG_APP_SOURCE_BRANCH="main"
ARG ARG_APP_SERVICE_NAME="app"
ENV APP_SOURCE_REPO $ARG_APP_SOURCE_REPO
ENV APP_INSTALL_ROOT $ARG_APP_INSTALL_ROOT
ENV APP_DIRNAME $ARG_APP_DIRNAME
ENV APP_SOURCE_BRANCH $ARG_APP_SOURCE_BRANCH
ENV APP_SERVICE_NAME $ARG_APP_SERVICE_NAME
ENV APP_SRC_DIR=${APP_INSTALL_ROOT}/${APP_DIRNAME}
ENV APP_VIRTUAL_ENV=${APP_INSTALL_ROOT}/.venvs/${APP_DIRNAME}
ENV APP_WORKSPACE_ROOT=${APP_INSTALL_ROOT}/workspace

# Clones the app repository from GitHub
RUN git clone --branch $APP_SOURCE_BRANCH https://github.com/${ARG_APP_SOURCE_REPO}.git ${APP_SRC_DIR} &&\
    cd ${APP_SRC_DIR} &&\
    git checkout $APP_SOURCE_BRANCH

# Sets the working directory to workspace root
WORKDIR $WORKSPACE_ROOT
# Copies scripts from host into the image
COPY ./.docker/scripts/ ./scripts/

# Installs Python dependencies listed in requirements.txt
RUN if [ -f ./scripts/requirements.txt ]; then pip3 install -r ./scripts/requirements.txt; fi

RUN chown -R $USERNAME:$USERNAME $WORKSPACE_ROOT
RUN chown -R $USERNAME:$USERNAME $APP_INSTALL_ROOT



# Specifies the command that will be executed when the container is run
CMD ["bash"]
