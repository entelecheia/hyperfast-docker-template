.DEFAULT_GOAL := help
COPIER ?= uvx --from copier==9.19.1 copier
OUT ?= .render
ANSWERS := $(wildcard tests/answers/*.yaml)

.PHONY: help render lint check smoke

help: ## show targets
	@awk 'BEGIN {FS = ":.*## "} /^[a-z-]+:.*## / {printf "  %-8s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

render: ## render every tests/answers/*.yaml into $(OUT)/<name> (copier, no --trust)
	rm -rf $(OUT)
	@for a in $(ANSWERS); do \
	  n=$$(basename $$a .yaml); echo "render $$n"; \
	  $(COPIER) copy --quiet --defaults --vcs-ref=HEAD --data-file $$a . $(OUT)/$$n || exit 1; \
	done

lint: render ## shellcheck the template and test scripts
	shellcheck tests/*.sh $(OUT)/*/scripts/*.sh $(wildcard $(OUT)/*/.docker/entrypoint.sh)

check: lint ## render, then run each render's make check and the compose rule fixtures
	@for d in $(OUT)/*/; do echo "make check in $$d"; $(MAKE) -C $$d check || exit 1; done
	tests/check-compose-fixtures.sh $(OUT)

smoke: render ## build the CPU workspace image and test SSH, user and host keys
	tests/smoke-workspace.sh $(OUT)/workspace-cpu
