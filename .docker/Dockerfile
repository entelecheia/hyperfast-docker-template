ARG ARG_BUILD_FROM="nvcr.io/nvidia/pytorch:23.04-py3"
FROM $ARG_BUILD_FROM

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Seoul

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y fontconfig fonts-nanum curl git tzdata locales locales-all \
        libcairo2-dev imagemagick ffmpeg sudo software-properties-common openssh-server \
    && add-apt-repository ppa:git-core/ppa -y \
    && apt-get update \
    && apt-get -y install --no-install-recommends git \
    && apt-get autoremove -y \
    && apt-get clean -y

# Set up locale
RUN localedef -v -c -i en_US -f UTF-8 en_US.UTF-8 || true
# fix sudo setrlimit(RLIMIT_CORE) error
RUN echo "Set disable_coredump false" > /etc/sudo.conf

# Add a non-root user to a container
ARG ARG_USERNAME="dev"
ARG ARG_USER_UID=1000
ARG ARG_USER_GID=$ARG_USER_UID
ARG ARG_USER_FULLNAME="Dev User"
ARG ARG_USER_EMAIL="dev@domain.com"
ARG ARG_GITHUB_USERNAME=""
ARG ARG_SYSTEM_HOSTNAME="dev-container"
ARG ARG_WORKSPACE_LOCATION="/"
ARG ARG_WORKSPACE_ROOT="/workspace"

ENV USERNAME $ARG_USERNAME
ENV USER_UID $ARG_USER_UID
ENV USER_GID $ARG_USER_GID
ENV USER_FULLNAME $ARG_USER_FULLNAME
ENV USER_EMAIL $ARG_USER_EMAIL
ENV GITHUB_USERNAME $ARG_GITHUB_USERNAME
ENV SYSTEM_HOSTNAME $ARG_SYSTEM_HOSTNAME
ENV WORKSPACE_LOCATION $ARG_WORKSPACE_LOCATION
ENV WORKSPACE_ROOT $ARG_WORKSPACE_ROOT
# print all args to check
RUN echo "USERNAME: $USERNAME from $ARG_USERNAME"
RUN echo "USER_UID: $USER_UID from $ARG_USER_UID"
RUN echo "USER_GID: $USER_GID from $ARG_USER_GID"
RUN echo "USER_FULLNAME: $USER_FULLNAME from $ARG_USER_FULLNAME"
RUN echo "USER_EMAIL: $USER_EMAIL from $ARG_USER_EMAIL"
RUN echo "GITHUB_USERNAME: $GITHUB_USERNAME from $ARG_GITHUB_USERNAME"
RUN echo "SYSTEM_HOSTNAME: $SYSTEM_HOSTNAME from $ARG_SYSTEM_HOSTNAME"
RUN echo "WORKSPACE_LOCATION: $WORKSPACE_LOCATION from $ARG_WORKSPACE_LOCATION"
RUN echo "WORKSPACE_ROOT: $WORKSPACE_ROOT from $ARG_WORKSPACE_ROOT"

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && adduser --uid $USER_UID --gid $USER_GID --force-badname --disabled-password --gecos "" $USERNAME  \
    && echo "$USERNAME:$USERNAME" | chpasswd \
    && adduser $USERNAME sudo \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# install dotfiles
ENV DOTFILES_APPLY_ROOTMOI=0
ENV DOTFILES_USE_CODE=1
ENV DOTFILES_USE_PYTHON_TOOLS=1
ENV REMOTE_CONTAINERS=1
# ENV DOTFILES_DEBUG=1

ENV PIP_DEFAULT_TIMEOUT 100
ENV DS_BUILD_FUSED_ADAM 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV KMP_DUPLICATE_LIB_OK TRUE

USER $USERNAME
RUN sudo rm -rf $WORKSPACE_ROOT && sudo mkdir -p $WORKSPACE_ROOT
RUN sudo chown -R $USERNAME:$USERNAME $WORKSPACE_ROOT
RUN sh -c "$(wget -qO- https://dotfiles.entelecheia.ai/install)"

# set workdir to user home
WORKDIR /home/$USERNAME
COPY ./.docker/scripts/ ./scripts/
RUN sudo chmod 755 ./scripts/devenv-entrypoint.sh

WORKDIR $WORKSPACE_ROOT
CMD ["zsh"]
