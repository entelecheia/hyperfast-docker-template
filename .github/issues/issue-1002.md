# Modernize copier.yaml for Copier v9.4.1 compatibility

## Assignees:

## Labels: enhancement, template-maintenance

## Milestone:

## Projects:

### 1. Legacy Jinja2 Environment Settings in `_envops`

- The current `_envops` settings in `copier.yaml` customize the Jinja2 syntax to use non-standard delimiters:

  ```yaml
  _envops:
    block_end_string: "%}"
    block_start_string: "{%"
    comment_end_string: "#}"
    comment_start_string: "{#"
    keep_trailing_newline: true
    variable_end_string: "}}`"
    variable_start_string: "`{{"
  ```

- Copier v6.0.0 and above use standard Jinja2 delimiters by default (`{{ }}`, `{% %}`, `{# #}`).
- **Issue**: Custom delimiters may cause compatibility issues with syntax highlighters and may no longer be necessary.
- **Solution**: Remove the `_envops` configuration to use default Jinja2 syntax or update template files to match the custom delimiters if they are still needed.

### 2. Tasks Specified as Strings Instead of Dictionaries

- The `_tasks` are currently defined as a list of strings:

  ```yaml
  _tasks:
    - "[ -d .git ] || git init"
    - "{% if github_repo_name %}git add remote origin https://github.com/`{{ github_username }}`/`{{ github_repo_name }}`.git 2>/dev/null || echo 'origin already exists'{% else %}echo 'No GitHub repository name provided. Skipping git remote add.'{% endif %}"
  ```

- Copier v9.3.0 and above support tasks defined as dictionaries with additional options like `when` and `shell`.
- **Issue**: Using strings limits task configuration and readability.
- **Solution**: Update tasks to use the dictionary format:

  ```yaml
  _tasks:
    - command: "[ -d .git ] || git init"
    - command: >
        {% if github_repo_name %}
        git remote add origin https://github.com/{{ github_username }}/{{ github_repo_name }}.git 2>/dev/null || echo 'origin already exists'
        {% else %}
        echo 'No GitHub repository name provided. Skipping git remote add.'
        {% endif %}
  ```

### 3. Deprecated Use of Backticks in Jinja Expressions

- Backticks are incorrectly used within Jinja expressions in `copier.yaml`, e.g., `` `{{ variable }}` ``.
- **Issue**: Backticks are not standard in Jinja2 syntax and may cause parsing errors.
- **Solution**: Remove backticks and use standard Jinja2 expressions:

  ```yaml
  default: "{{ docker_project_name | replace('-', '_') | upper }}"
  ```

### 4. Incorrect Validator Syntax in Questions

- The `validator` fields contain triple backticks and mismatched parentheses.
- **Issue**: The triple backticks and mismatched parentheses lead to invalid syntax.
- **Solution**: Correct the regular expression strings and ensure parentheses are properly matched:

  ```yaml
  validator: >-
    {% if not (docker_project_name | regex_search('^[a-z][a-z0-9\-]+')) %}
    docker_project_name must start with a letter, followed by one or more lowercase letters, digits, or dashes.
    {% endif %}
  ```

### 5. Add \_min_copier_version to Ensure Compatibility

- **Issue**: The copier.yaml file does not specify the minimum Copier version required.
- **Solution**: Add \_min_copier_version to enforce the use of Copier v9.4.1 or newer:

  ```yaml
  _min_copier_version: "9.4.1"
  ```

### 6. Add Helpful Messages for Users

- **Issue**: Users are not provided with messages before or after copying.
- **Solution**: Include \_message_before_copy and \_message_after_copy to enhance user experience:

  ```yaml
  _message_before_copy: |
    Welcome to the Docker template configuration!
    You'll be asked several questions to customize your Docker environment.

  _message_after_copy: |
    🎉 Your Docker project has been created successfully!
    Next steps:
    1. Review the generated configuration.
    2. Build your Docker image with: `make docker-build`.
  ```

### 7. Update Tasks to Use New Features

- **Issue**: Current tasks cannot leverage new features like when, shell, or chdir.
- **Solution**: Modify tasks to make use of these features if needed:
  ```yaml
  _tasks:
      - command: "[ -d .git ] || git init"
      - command: |
          git remote add origin https://github.com/{{ github_username }}/{{ github_repo_name }}.git 2>/dev/null || echo 'origin already exists'
      when: "{{ github_repo_name }}"
  ```

### 8. Consider Removing Unnecessary Configurations

- **Issue**: Settings like \_templates_suffix and customized \_envops may be unnecessary with the default Copier settings in v9.4.1.
- **Solution**: Test the template without these settings and remove them if they are redundant.

### 9. Handle Potential Security Implications with unsafe Setting

- **Issue**: If the template uses tasks or executes code, users may need to run Copier with --trust.
- **Solution**: Document this requirement in the README.md or adjust the template to avoid unsafe operations.

### 10. Update Documentation and README

- **Issue**: The README.md may reference outdated configurations or usage instructions.
- **Solution**: Review and update documentation to reflect changes in copier.yaml.

### 11. Ensure Compatibility with New Copier Features

- **Issue**: The template may not utilize new features introduced in Copier v9.x, such as dynamic choices, improved templating, and enhanced migration support.
- **Solution**: Explore new Copier features and update the template accordingly.

### 12. Validate All Default Values and Placeholders

- **Issue**: Some default values use invalid Jinja syntax or may not render correctly.
- **Solution**: Review and correct all default values and placeholders
