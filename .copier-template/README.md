# Hyperfast Docker Template

This repository provides Docker setup instructions to install and run Stable-Diffusion-WebUI. It uses NVIDIA's PyTorch container as a base image and includes several additional packages necessary for Stable-Diffusion-WebUI.

## Prerequisites

- Docker
- Docker Compose
- NVIDIA Docker (for GPU support)

## Setup

1. Clone the repository and navigate to the directory.

2. Export the environment variables and build the Docker image:

   ```
   set -a; source .docker/docker.env; set +a; docker-compose --project-directory . -f .docker/docker-compose.yaml build
   ```

   The `docker.env` file includes various configuration options and environment variables. Feel free to adjust them to suit your needs. For instance, you may want to change the default NVIDIA Docker image in the `BUILD_FROM` variable, or the port mapping in `SDW_HOST_SSH_PORT` and `SDW_HOST_GRADIO_PORT`.

   The `set -a; source .docker/docker.env; set +a;` sequence of commands exports the environment variables in the `.docker/docker.env` file to the shell environment, making them available to the subsequent `docker-compose` command. This method allows us to use shell commands in the variable definitions, like `"$(whoami)"` for the `USERNAME` variable. We're using this approach instead of the `--env-file` argument because we need these environment variables to be available to the `docker-compose` command itself, not just to the services defined in the `docker-compose.yml` file.

3. Start the Docker container:

   ```
   set -a; source .docker/docker.env; set +a; docker-compose --project-directory . -f .docker/docker-compose.yaml up
   ```

   This will start a Docker container with the image built in the previous step. The container will run a bash command (`webui.sh`) specified in the `command` section of the `docker-compose.yml` file.

## Usage

After starting the container, you can access the Stable-Diffusion-WebUI at `localhost:<SDW_HOST_GRADIO_PORT>`. By default, the port is set to `18860`.

You can also SSH into the container using the SSH port specified in `SDW_HOST_SSH_PORT`. By default, the port is set to `2722`.

## Volumes

The `docker-compose.yml` file specifies several volumes that bind mount directories on the host to directories in the container. These include the Hugging Face cache and data directories, the workspace directory, and a scripts directory. Changes made in these directories will persist across container restarts.

## Troubleshooting

If you encounter any issues with this setup, please check the following:

- Make sure Docker and Docker Compose are installed correctly.
- Make sure NVIDIA Docker is installed if you're planning to use GPU acceleration.
- Ensure the environment variables in the `docker.env` file are correctly set.
- Check the Docker and Docker Compose logs for any error messages.

## Environment Variables

The `set -a; source .docker/docker.env; set +a;` sequence of commands in the setup steps exports the environment variables in the `.docker/docker.env` file to the shell environment, making them available to the subsequent `docker-compose` command.

In Docker, environment variables can be used in the `docker-compose.yml` file to customize the behavior of the services. This is a common practice when you want to set different configurations for development, testing, and production environments.

The `docker-compose` command has an `--env-file` argument, but it's used to set the environment variables for the services defined in the `docker-compose.yml` file, not for the `docker-compose` command itself. The variables defined in the `--env-file` will not be substituted into the `docker-compose.yml` file.

However, the environment variables we set in the `.docker/docker.env` file are used in the `docker-compose.yml` file. For example, the `$BUILD_FROM` variable is used to set the base image for the Docker build. Therefore, we need to export these variables to the shell environment before running the `docker-compose` command.

This method also allows us to use shell commands in the variable definitions, like `"$(whoami)"` for the `USERNAME` variable, which wouldn't be possible if we used the `--env-file` argument. Shell commands in the `.env` file are not evaluated.

## Contributing

Contributions to improve this setup are welcome. Please feel free to submit a pull request or open an issue on the GitHub repository.
