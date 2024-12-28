# Change github_repo_name to source_github_repos with submodule support

## Problem

Currently, the template only supports a single GitHub repository name through the `github_repo_name` parameter. This limits the ability to incorporate multiple source repositories as part of the Docker build process.

## Proposed Solution

Replace `github_repo_name` with `source_github_repos` that supports multiple repository configurations:

1. Change parameter name from `github_repo_name` to `source_github_repos`
2. Allow both single repository string or list of repositories
3. Add git submodule support
4. Implement copying from src to app_install_root

### Parameter Specification

```yaml
source_github_repos:
  type: str | list[str]
  help: >-
    GitHub repositories to include as submodules (format: username/reponame).
    Can be a single repository string or list of repositories.
  examples:
    - "username/repo1" # Single repository
    - ["username/repo1", "username/repo2"] # Multiple repositories
```

### Implementation Details

1. Update copier.yaml:

   - Remove `github_repo_name` parameter
   - Add new `source_github_repos` parameter
   - Update related template logic

2. Modify git initialization task:

```yaml
_tasks:
  - "[ -d .git ] || git init"
  - |
    {% for repo in source_github_repos if source_github_repos %}
    git submodule add https://github.com/{{ repo }}.git src/{{ repo | regex_replace('.*/', '') }}
    {% endfor %}
```

3. Update Dockerfile:

```dockerfile
# Copy source repositories
COPY ./src/ ${APP_INSTALL_ROOT}/
```

## Benefits

1. Flexibility to include multiple source repositories
2. Better organization through git submodules
3. Structured source code management under src directory
4. Automated copying to app_install_root during Docker build

## Breaking Changes

- Removes `github_repo_name` parameter
- Changes git repository initialization logic
- Requires updating existing templates to use new parameter

## Migration Guide

For existing projects:

1. Rename `github_repo_name` to `source_github_repos` in .copier-docker-config.yaml
2. Format repository name as "username/reponame"
3. Convert to list format if multiple repositories needed

## Implementation Tasks

- [ ] Update copier.yaml with new parameter
- [ ] Modify git initialization tasks
- [ ] Update Dockerfile copy commands
- [ ] Update documentation
- [ ] Add migration guide
- [ ] Update tests
