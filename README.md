# Hyperfast Docker Template

[![version-image]][release-url]
[![release-date-image]][release-url]
[![license-image]][license-url]

<!-- Links: -->

[pypi-image]: https://img.shields.io/pypi/v/hyperfast-docker-template
[license-image]: https://img.shields.io/github/license/entelecheia/hyperfast-docker-template
[license-url]: https://github.com/entelecheia/hyperfast-docker-template/blob/main/LICENSE
[version-image]: https://img.shields.io/github/v/release/entelecheia/hyperfast-docker-template?sort=semver
[release-date-image]: https://img.shields.io/github/release-date/entelecheia/hyperfast-docker-template
[release-url]: https://github.com/entelecheia/hyperfast-docker-template/releases
[jupyter-book-image]: https://jupyterbook.org/en/stable/_images/badge.svg
[repo-url]: https://github.com/entelecheia/hyperfast-docker-template
[pypi-url]: https://pypi.org/project/hyperfast-docker-template
[docs-url]: https://hyperfast-docker.entelecheia.ai
[changelog]: https://github.com/entelecheia/hyperfast-docker-template/blob/main/CHANGELOG.md
[contributing guidelines]: https://github.com/entelecheia/hyperfast-docker-template/blob/main/CONTRIBUTING.md

<!-- Links: -->

Hyperfast Docker Template is a powerful tool that leverages copier to streamline the creation of new Docker projects. It simplifies and accelerates Docker configurations, fostering a highly efficient and user-friendly development experience.

- Documentation: [https://hyperfast-docker.entelecheia.ai][docs-url]
- GitHub: [https://github.com/entelecheia/hyperfast-docker-template][repo-url]

Hyperfast Docker Template is an innovative project creation tool that merges the flexibility of Docker with the simplicity of Copier to optimize the project creation process. This tool allows developers to quickly and efficiently set up Docker projects, thereby significantly reducing the time and effort traditionally associated with this process.

By harnessing the power of Copier, Hyperfast Docker Template provides a user-friendly interface that developers can utilize to duplicate Docker projects with minimal hassle. It eradicates the need for extensive coding knowledge, making Docker more accessible to a wider range of users.

Furthermore, this tool employs a hyperfast approach to Docker project templating, ensuring that new projects are up and running in the quickest time possible. This speed does not compromise the quality or functionality of the Docker projects created, but instead enhances their performance, reliability, and scalability.

Hyperfast Docker Template also ensures consistency across Docker projects, as the use of a template guarantees that all projects conform to a standardized layout and configuration. This, in turn, enhances the overall workflow, as developers can familiarize themselves with a consistent project structure and configuration, leading to increased productivity and efficiency.

Whether you're an experienced developer or a novice just starting out, Hyperfast Docker Template is the ideal tool to fast-track your Docker project creation process, ensuring a seamless, efficient, and highly productive development experience.

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

## Changelog

See the [CHANGELOG] for more information.

## Contributing

Contributions are welcome! Please see the [contributing guidelines] for more information.

## License

This project is released under the [MIT License][license-url].
