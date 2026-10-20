# Hyperfast Docker Template

A [Copier](https://copier.readthedocs.io) template for container images and the compose run spec that goes with them. Its defaults are meant for shared multi-tenant GPU hosts: non-root users, loopback-only ports, CPU/memory/pids caps, GPUs pinned by UUID through the `nvidia` runtime, data on a large disk instead of the container layer, and versioned image tags.

It builds images and runs one instance per user. It does not manage host accounts, passwords, quotas or GPU allocation; that belongs to host tooling.

## Use

```sh
copier copy gh:entelecheia/hyperfast-docker-template my-project
cd my-project
cp instances/example.env instances/mine.env   # fill in the deploy-time values
make check INSTANCE=mine && make build INSTANCE=mine && make up INSTANCE=mine
```

No `--trust` is needed: the template runs no tasks. Copier 9.3 or newer is required.

Two kinds of project:

- `workspace`: an SSH dev container. Key-only login on container port 2222 through an unprivileged sshd, so the whole container runs as the image user. Optional passwordless sudo inside the container (on by default). The SSH host key is created on first start and kept in the home volume, never baked into the image. Home and `/tmp` are named volumes; data is a bind mount at `/data`.
- `service`: one long-running process with an HTTP healthcheck. Either built from `.docker/Dockerfile` or a pinned upstream image (for example a model server) with no Dockerfile at all.

Image variants (one base image each):

| Variant | Base | Driver floor |
|---|---|---|
| `cpu-ubuntu24.04` | `ubuntu:24.04` | none |
| `cuda12.8-ubuntu24.04` (default) | `nvidia/cuda:12.8.2-{devel,runtime}-ubuntu24.04` | 570 (535 only via CUDA minor-version compatibility) |
| `cuda13.0-ubuntu24.04` | `nvidia/cuda:13.0.3-{devel,runtime}-ubuntu24.04` | 580 |

`workspace` uses the `devel` images, `service` the `runtime` images.

What a generated project contains:

- `compose.yaml`: the run spec. Deploy-time values (name prefix, ports, GPU UUIDs, data path, caps) come from `instances/<name>.env`; secrets from `secrets/app.env`. Both are gitignored, except `instances/example.env`.
- `scripts/check-compose.sh`: rejects non-loopback ports (other than the workspace SSH port), `ipc: host` without `ALLOW_IPC_HOST=1`, missing caps, GPUs without `runtime: nvidia` or without UUIDs, `latest` or untagged images, and missing healthchecks. `make check` runs it with `docker build --check` and shellcheck.
- `.github/workflows/ci.yaml`: `make check` and a build of every variant without pushing, on pull requests.
- `.github/workflows/release.yaml`: python-semantic-release tags `main` from conventional commits, then pushes `<registry>/<owner>/<project>:<version>-<variant>`. There is no `latest` tag.
- `AGENTS.md`: commands, verify step and rules for coding agents.

## Migrating a project generated before v1.0.0

v1.0.0 is a redesign: the questions, file layout and env files all changed, and there are no Copier migrations. `copier update` from 0.x will not produce a usable result. To move a project:

1. On a new branch, render fresh: `copier copy --overwrite gh:entelecheia/hyperfast-docker-template .` and answer for the new questions.
2. Port your Dockerfile additions into `.docker/Dockerfile` and your run values into `instances/<name>.env`.
3. Delete the old files: `.docker/.docker-scripts/`, `.docker/.ids/`, `.docker/docker.*.env`, `.docker/docker-compose.*.yaml`, `.docker/Dockerfile.*`, `.env.secret`, `.tasks*.toml`.
4. Run `make check`, then open a pull request.

Repos generated from 0.x are not migrated by this release:

| Repos | Disposition |
|---|---|
| dev-containers | Independent (not Copier-managed); its variants pattern was folded into this template |
| deepnlp-2024, deepnlp-2025 and the archived course templates | Left as is; they build on dev-containers images |
| agentgpt, devenv, fastchat, invokeai, llama-factory, ollama, openllm, ros2, sdwebui, TensorRT-LLM, traefik, txtgen-webui (`*-container`) | Left as is; a revived repo moves with the steps above |

## Developing the template

- `make check`: renders every `tests/answers/*.yaml`, runs each render's `make check`, and runs `tests/check-compose-fixtures.sh` and `tests/check-workflows.sh` (actionlint plus timeout, concurrency, cache and no-latest rules). Needs uv, docker with compose, jq and shellcheck.
- `make smoke`: builds the CPU workspace render and runs `tests/smoke-workspace.sh`.
- Releases are tagged from `main` with conventional commits; see GitHub Releases. `CHANGELOG.md` covers 0.x only.

## License

MIT
