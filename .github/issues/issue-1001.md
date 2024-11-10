---
name: Add support for multiple source GitHub repos
about: Change github_repo_name to source_github_repos for handling multiple source repositories
title: "Enhancement: Support multiple source GitHub repositories"
labels: enhancement
assignees: ""
---

## Description

Currently, the template only supports a single GitHub repository through `github_repo_name`. We need to enhance this to support multiple source repositories that can be added as submodules and copied to the Docker image.

## Proposed Changes

1. Remove `github_repo_name` from copier.yaml
2. Add new configuration `source_github_repos`:

```yaml
source_github_repos:
  type: str
  help: List of GitHub repositories to add as submodules (format: username/reponame or multiple repos comma-separated)
  validator: >-
    {% if not (source_github_repos | regex_search('^[a-z0-9\-]+/[a-z0-9\-]+(,[a-z0-9\-]+/[a-z0-9\-]+)*$')) %}
    source_github_repos must be in format "username/reponame" or multiple "username/reponame,username2/reponame2"
    {% endif %}
```

3. Update git tasks to handle multiple repos:

```yaml
_tasks:
  - "[ -d .git ] || git init"
  - |
    {% for repo in source_github_repos.split(',') %}
    git submodule add https://github.com/{{ repo }}.git src/{{ repo.split('/')[1] }} 2>/dev/null || echo 'submodule {{ repo }} already exists'
    {% endfor %}
```

4. Update Dockerfile to copy multiple source repositories:

# Copy source repositories

```
{% for repo in source_github_repos.split(',') %}
COPY ./src/{{ repo.split('/')[1] }} ${APP_INSTALL_ROOT}/{{ repo.split('/')[1] }}/
{% endfor %}
```

## Implementation Notes

- The `source_github_repos` will accept either single repo format: `username/reponame` or multiple repos: `username/reponame,username2/reponame2`
- Each repository will be added as a git submodule under the `src/` directory
- The repositories will be copied to `${APP_INSTALL_ROOT}/` in the Docker image
- The validator ensures proper formatting of repository names

## Testing Checklist

- [ ] Test single repository input
- [ ] Test multiple repository input
- [ ] Verify submodule creation
- [ ] Verify Docker image build with multiple sources
- [ ] Update documentation to reflect new configuration
