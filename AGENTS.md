# hyperfast-docker-template

Copier template for container images plus a compose run spec with shared-GPU-host defaults. It is not host tooling: no accounts, quotas or GPU allocation.

## Commands

- Render all fixtures: `make render` (into `.render/`, gitignored)
- Check: `make check` (render, each render's `make check`, compose rule fixtures)
- Smoke: `make smoke` (build the CPU workspace image, test user, password, host key, SSH)

## Verifying your work

Run before reporting a task complete and paste the output. Fix the template, never the fixtures or checks to make them pass.

- `make check` (healthy output ends with `all compose fixtures behaved as expected`)
- `make smoke` when touching the Dockerfile, entrypoint, sshd config or compose volumes (ends with `workspace smoke test passed`)
- No local docker? Run them in CI (`ci.yaml`); report anything not run as unverified.

## Conventions

- Template sources live in `.copier-template/`; `.jinja` files are rendered with standard Jinja delimiters. GitHub Actions expressions inside `.jinja` files go in `{% raw %}...{% endraw %}`.
- Conditional files and directories use Jinja in the file name (e.g. `{% if kind == 'workspace' %}entrypoint.sh{% endif %}`).
- Every new question needs a valid default or a `when:` guard, and a `tests/answers/*.yaml` case that exercises it.
- A new shared-host rule goes into `scripts/check-compose.sh` together with a rejecting case in `tests/check-compose-fixtures.sh`.
- Conventional commits; `feat!:` or a `BREAKING CHANGE:` footer for answer or layout changes.

## Architecture

- `copier.yaml`: questions. `.copier-template/`: rendered files. `tests/answers/`: render fixtures.
- `tests/check-compose-fixtures.sh`: mutations every render must reject. `tests/smoke-workspace.sh`: image contract test.
- `.github/workflows/ci.yaml`: check and smoke on PRs. `release.yaml`: tag-only semantic release from `main`.

## Things the agent gets wrong

- 2026-10-20, template rewrite: never bake SSH host keys, passwords or `latest` tags into generated files; never publish ports without a bind address. Revisit when: the checks above enforce all of these.
- 2026-10-20, template rewrite: do not add `_tasks` or extensions; they force `--trust` on every user. Revisit when: a task is unavoidable.
