# Review guide

## Passes

- Bugs: does every `tests/answers/*.yaml` still render, and does each render's `make check` pass? Look for Jinja branches no fixture reaches.
- Security on shared hosts: ports bound to loopback, no `ipc: host`, caps present, GPUs via `runtime: nvidia` pinned by UUID, non-root user, no password, no SSH host keys or secrets in images, secrets never sourced or echoed by scripts, no `docker system prune` or `down -v`.
- Spec fit: the change matches the linked issue's acceptance criteria; deviations are stated in the PR.
- Instruction prose (`AGENTS.md`, `.copier-template/AGENTS.md.jinja`): directives only, one page, no counts without a check.

## Important vs nit

- Important: a render that fails, a rule the check script misses, a security default weakened, a breaking answer change without `feat!`/`BREAKING CHANGE`.
- Nit: wording, ordering, comments. At most 5 nits per review.

## Do not report

- `.render/` output, `CHANGELOG.md` (0.x history), license texts.
- What CI already enforces (shellcheck findings, compose rule fixtures).
