<!--next-version-placeholder-->

## v0.34.0 (2024-12-28)

### Bug Fixes

- Correct command in copier.yaml to properly add Git submodule
  ([`b33cf17`](https://github.com/entelecheia/hyperfast-docker-template/commit/b33cf17ec1c20d8be8dbed113e438e0b652b8991))

- Correct conditional syntax for HOST_SOURCE_DIR variable in docker.common.env.jinja
  ([`8c6633e`](https://github.com/entelecheia/hyperfast-docker-template/commit/8c6633e68cba0910d1d4495223839811bd120b4e))

- Correct variable references in copier.yaml for single GitHub repository support
  ([`36f5a2a`](https://github.com/entelecheia/hyperfast-docker-template/commit/36f5a2a7e8e09d26720b0aa504e1ba5ddcfd4169))

- Update app_dirname to hyperfast-docker-template and adjust environment variable defaults in
  configuration files
  ([`cff5739`](https://github.com/entelecheia/hyperfast-docker-template/commit/cff5739a224b9f4b5942f76c48a2720db186c05c))

- Update APP_REPO_NAME and HOST_SOURCE_DIR variable definitions for improved conditional handling
  ([`483ac30`](https://github.com/entelecheia/hyperfast-docker-template/commit/483ac30994e836ace5894bfb34843816e9e2cb80))

- Update git submodule command in copier.yaml to improve error handling and output
  ([`af245c2`](https://github.com/entelecheia/hyperfast-docker-template/commit/af245c2bdf4547584b23905c4c2d2c29a17c5944))

- Update source directory and GitHub repository configurations in Copier templates for consistency
  ([`6910b4e`](https://github.com/entelecheia/hyperfast-docker-template/commit/6910b4ede0f4b57b725ad9edf26bb65d89204204))

- Update volume mappings in docker-compose template for improved directory configuration
  ([`329d45f`](https://github.com/entelecheia/hyperfast-docker-template/commit/329d45f519736043c273d027b83f31b3f570941a))

- **deps**: Update python-semantic-release and docker actions to latest versions
  ([`05eecb6`](https://github.com/entelecheia/hyperfast-docker-template/commit/05eecb65f658d3718e0ef236736fcc3ca0d49204))

- **deps**: Update python-semantic-release to version 9.15.2
  ([`274d78a`](https://github.com/entelecheia/hyperfast-docker-template/commit/274d78a802229670f1e01d548bd09b1e688035c7))

- **docker**: Update application directory name and configuration paths
  ([`258d062`](https://github.com/entelecheia/hyperfast-docker-template/commit/258d062770f4b64afcfbdeecea6dadec82c2627d))

- **docker**: Update application directory name and dependencies in configuration files
  ([`702d917`](https://github.com/entelecheia/hyperfast-docker-template/commit/702d91758374621be8fa5a716b0ecb390b10822b))

### Chores

- Update Copier version and add source directory configuration in .copier-docker-config.yaml
  ([`3ba3562`](https://github.com/entelecheia/hyperfast-docker-template/commit/3ba3562b0812bef02d664ec5c5265d3ad9ee2864))

- **deps**: Bump docker/build-push-action from 6.9.0 to 6.10.0
  ([#261](https://github.com/entelecheia/hyperfast-docker-template/pull/261),
  [`842a722`](https://github.com/entelecheia/hyperfast-docker-template/commit/842a7229629b67ff3ffbf41dfde4637707370c0d))

Bumps [docker/build-push-action](https://github.com/docker/build-push-action) from 6.9.0 to 6.10.0.
  - [Release notes](https://github.com/docker/build-push-action/releases) -
  [Commits](https://github.com/docker/build-push-action/compare/v6.9.0...v6.10.0)

--- updated-dependencies: - dependency-name: docker/build-push-action dependency-type:
  direct:production

update-type: version-update:semver-minor

...

Signed-off-by: dependabot[bot] <support@github.com>

Co-authored-by: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>

- **deps**: Bump docker/metadata-action from 5.5.1 to 5.6.1
  ([#260](https://github.com/entelecheia/hyperfast-docker-template/pull/260),
  [`dba1031`](https://github.com/entelecheia/hyperfast-docker-template/commit/dba10315e6bea59cd6b44a52c9d5d16850149e03))

Bumps [docker/metadata-action](https://github.com/docker/metadata-action) from 5.5.1 to 5.6.1. -
  [Release notes](https://github.com/docker/metadata-action/releases) -
  [Commits](https://github.com/docker/metadata-action/compare/v5.5.1...v5.6.1)

--- updated-dependencies: - dependency-name: docker/metadata-action dependency-type:
  direct:production

update-type: version-update:semver-minor

...

Signed-off-by: dependabot[bot] <support@github.com>

Co-authored-by: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>

- **deps**: Bump python-semantic-release/python-semantic-release
  ([`210d7f8`](https://github.com/entelecheia/hyperfast-docker-template/commit/210d7f841337adabb2fae473cda74969c7eb44af))

Bumps
  [python-semantic-release/python-semantic-release](https://github.com/python-semantic-release/python-semantic-release)
  from 9.12.1 to 9.12.2. - [Release
  notes](https://github.com/python-semantic-release/python-semantic-release/releases) -
  [Changelog](https://github.com/python-semantic-release/python-semantic-release/blob/master/CHANGELOG.md)
  -
  [Commits](https://github.com/python-semantic-release/python-semantic-release/compare/v9.12.1...v9.12.2)

--- updated-dependencies: - dependency-name: python-semantic-release/python-semantic-release
  dependency-type: direct:production

update-type: version-update:semver-patch

...

Signed-off-by: dependabot[bot] <support@github.com>

- **deps**: Bump python-semantic-release/python-semantic-release
  ([`b6e4f1c`](https://github.com/entelecheia/hyperfast-docker-template/commit/b6e4f1c5632ec29ce709bdda1670a988973ca040))

Bumps
  [python-semantic-release/python-semantic-release](https://github.com/python-semantic-release/python-semantic-release)
  from 9.12.0 to 9.12.1. - [Release
  notes](https://github.com/python-semantic-release/python-semantic-release/releases) -
  [Changelog](https://github.com/python-semantic-release/python-semantic-release/blob/master/CHANGELOG.md)
  -
  [Commits](https://github.com/python-semantic-release/python-semantic-release/compare/v9.12.0...v9.12.1)

--- updated-dependencies: - dependency-name: python-semantic-release/python-semantic-release
  dependency-type: direct:production

update-type: version-update:semver-patch

...

Signed-off-by: dependabot[bot] <support@github.com>

- **deps**: Bump python-semantic-release/python-semantic-release
  ([#258](https://github.com/entelecheia/hyperfast-docker-template/pull/258),
  [`d54f2af`](https://github.com/entelecheia/hyperfast-docker-template/commit/d54f2af69890eaf66d6a00af236ffeb200923569))

Bumps
  [python-semantic-release/python-semantic-release](https://github.com/python-semantic-release/python-semantic-release)
  from 9.12.2 to 9.13.0. - [Release
  notes](https://github.com/python-semantic-release/python-semantic-release/releases) -
  [Changelog](https://github.com/python-semantic-release/python-semantic-release/blob/master/CHANGELOG.md)
  -
  [Commits](https://github.com/python-semantic-release/python-semantic-release/compare/v9.12.2...v9.13.0)

--- updated-dependencies: - dependency-name: python-semantic-release/python-semantic-release
  dependency-type: direct:production

update-type: version-update:semver-minor

...

Signed-off-by: dependabot[bot] <support@github.com>

Co-authored-by: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>

- **deps**: Bump python-semantic-release/python-semantic-release
  ([#259](https://github.com/entelecheia/hyperfast-docker-template/pull/259),
  [`937bcd2`](https://github.com/entelecheia/hyperfast-docker-template/commit/937bcd217ef5e4586ebba9674c8e733796eead41))

- **deps**: Bump python-semantic-release/python-semantic-release
  ([#262](https://github.com/entelecheia/hyperfast-docker-template/pull/262),
  [`b2b9a4a`](https://github.com/entelecheia/hyperfast-docker-template/commit/b2b9a4a0e31f0b3f921e178d674a567824804de1))

- **deps**: Bump python-semantic-release/python-semantic-release
  ([#263](https://github.com/entelecheia/hyperfast-docker-template/pull/263),
  [`56a28ff`](https://github.com/entelecheia/hyperfast-docker-template/commit/56a28ff5aed4f0ac5e2491ebcb46bb19ff8f2c87))

Bumps
  [python-semantic-release/python-semantic-release](https://github.com/python-semantic-release/python-semantic-release)
  from 9.15.0 to 9.15.1. - [Release
  notes](https://github.com/python-semantic-release/python-semantic-release/releases) -
  [Changelog](https://github.com/python-semantic-release/python-semantic-release/blob/master/CHANGELOG.md)
  -
  [Commits](https://github.com/python-semantic-release/python-semantic-release/compare/v9.15.0...v9.15.1)

--- updated-dependencies: - dependency-name: python-semantic-release/python-semantic-release
  dependency-type: direct:production

update-type: version-update:semver-patch

...

Signed-off-by: dependabot[bot] <support@github.com>

Co-authored-by: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>

- **deps**: Bump python-semantic-release/python-semantic-release
  ([#264](https://github.com/entelecheia/hyperfast-docker-template/pull/264),
  [`c7941eb`](https://github.com/entelecheia/hyperfast-docker-template/commit/c7941eb2e45438e88f9ec6269b9795df032ef19e))

Bumps
  [python-semantic-release/python-semantic-release](https://github.com/python-semantic-release/python-semantic-release)
  from 9.15.1 to 9.15.2. - [Release
  notes](https://github.com/python-semantic-release/python-semantic-release/releases) -
  [Changelog](https://github.com/python-semantic-release/python-semantic-release/blob/master/CHANGELOG.md)
  -
  [Commits](https://github.com/python-semantic-release/python-semantic-release/compare/v9.15.1...v9.15.2)

--- updated-dependencies: - dependency-name: python-semantic-release/python-semantic-release
  dependency-type: direct:production

update-type: version-update:semver-patch

...

Signed-off-by: dependabot[bot] <support@github.com>

Co-authored-by: dependabot[bot] <49699333+dependabot[bot]@users.noreply.github.com>

### Features

- Add APP_REPO_NAME and HOST_SOURCE_DIR variables to docker.common.env.jinja for improved
  configuration
  ([`a25e3a0`](https://github.com/entelecheia/hyperfast-docker-template/commit/a25e3a06bc909f800b2b679b56bd360bfae6aa6d))

- Add copier submodule for project management
  ([`b9049be`](https://github.com/entelecheia/hyperfast-docker-template/commit/b9049be385ba29f7d9a2c7ebe5da5ac093824954))

- Add support for adding multiple GitHub submodules in copier.yaml
  ([`90d1c71`](https://github.com/entelecheia/hyperfast-docker-template/commit/90d1c7106364a1dbbe83599a96c017baf9f1a662))

- Add support for multiple GitHub repositories and configurable source directory path in copier.yaml
  ([`5173533`](https://github.com/entelecheia/hyperfast-docker-template/commit/5173533c72d5085e01989a508ae66ba7cb9edaf6))

- Enhance issue template to support multiple GitHub repositories and modernize copier.yaml for
  compatibility
  ([`ea1a6df`](https://github.com/entelecheia/hyperfast-docker-template/commit/ea1a6df597e1bede397c2087541836d2517f5eef))

- Update copier.yaml to support a single GitHub repository as a submodule
  ([`5c174dd`](https://github.com/entelecheia/hyperfast-docker-template/commit/5c174dd92089a42813291d3d5ea188886c874d10))


## v0.33.0 (2024-10-28)

### Chores

* chore: Remove unused .github/workflows/release.yaml file ([`b1f2555`](https://github.com/entelecheia/hyperfast-docker-template/commit/b1f2555af0777faff6fa712f1a683833eb20cf19))

* chore: Remove unused .github/workflows/prerelease.yaml file ([`e8f4bed`](https://github.com/entelecheia/hyperfast-docker-template/commit/e8f4bed1963fc743b641524363d29aab23ecf4e0))

### Features

* feat: Update python-semantic-release version to 9.12.0 and remove unused .github/workflows/prerelease.yaml file ([`f26e8e9`](https://github.com/entelecheia/hyperfast-docker-template/commit/f26e8e975306b8253de9ccceadc77f8e01c86028))

* feat: Update python-semantic-release version to 9.12.0 ([`4669038`](https://github.com/entelecheia/hyperfast-docker-template/commit/466903829ce5be9bb7074d563445392f21aee4c5))

### Unknown

* Merge pull request #252 from entelecheia/entelecheia/issue251 ([`279ed07`](https://github.com/entelecheia/hyperfast-docker-template/commit/279ed070aaccb0995f9a8f9d0fa45a94c9938aec))

* Merge pull request #248 from entelecheia/release

Release ([`8e724c4`](https://github.com/entelecheia/hyperfast-docker-template/commit/8e724c4b07246e73cec22b8fd92682994de3a683))


## v0.32.0 (2024-10-15)

### Feature

* **docker:** Add support for restart policy and TTY options ([`3d41a1f`](https://github.com/entelecheia/hyperfast-docker-template/commit/3d41a1f4d28706c6290e36ca467756942ca3dee5))

## v0.31.5 (2024-09-30)

### Fix

* **workflows:** Upgrade docker/build-push-action to v6.9.0 ([`53d798e`](https://github.com/entelecheia/hyperfast-docker-template/commit/53d798ec74bc4384075d8c5263dcb9d601dd9c92))

## v0.31.4 (2024-08-17)

### Fix

* Update docker/build-push-action to v6.7.0 ([`0a39e21`](https://github.com/entelecheia/hyperfast-docker-template/commit/0a39e21651b32fccf4cd44d045578bc4e69acb45))

## v0.31.3 (2024-08-10)

### Fix

* Update docker/build-push-action to v6.6.1 ([`ba1a7d7`](https://github.com/entelecheia/hyperfast-docker-template/commit/ba1a7d7eb12f623eb8985f97dcdc8c0b9d1cec32))

## v0.31.2 (2024-07-22)

### Fix

* Update docker/build-push-action to v6.5.0 ([`fe67a3a`](https://github.com/entelecheia/hyperfast-docker-template/commit/fe67a3a965a4c724e0d08cd0be33a94340cab305))

## v0.31.1 (2024-07-17)

### Fix

* Update docker/build-push-action to v6.4.1 ([`2fdf8ef`](https://github.com/entelecheia/hyperfast-docker-template/commit/2fdf8ef03c885774ccb3f1815fc922934987569b))

## v0.31.0 (2024-07-04)

### Feature

* **docker:** Add support for tty configuration in Docker containers ([`f23dad5`](https://github.com/entelecheia/hyperfast-docker-template/commit/f23dad5df1b3d75038d9571e5cc248a832a71642))

### Fix

* **docker:** Add message before starting Jupyter Lab ([`528bcb8`](https://github.com/entelecheia/hyperfast-docker-template/commit/528bcb83ba500c19e8b47ba1253180008aacee54))
* **workflows:** Upgrade docker/build-push-action to 63.0 ([`81e6bf5`](https://github.com/entelecheia/hyperfast-docker-template/commit/81e6bf5b860c1312f5df506594a9f5f7c3a25c8e))
* **docker:** Correct typo in `tty` Jinja2 template variable ([`b908113`](https://github.com/entelecheia/hyperfast-docker-template/commit/b908113477405671b0f624f6b31d1958348cdf39))

## v0.30.6 (2024-06-23)

### Fix

* Update docker/build-push-action to version 6.1.0 ([`aaa1b41`](https://github.com/entelecheia/hyperfast-docker-template/commit/aaa1b41ea9adeca0188948f9c91bd0baf83c635b))

## v0.30.5 (2024-06-23)

### Fix

* Update docker/build-push-action to version 6.0.2 ([`f1165f2`](https://github.com/entelecheia/hyperfast-docker-template/commit/f1165f246e49da882443049c26b028554748021c))

## v0.30.4 (2024-06-11)

### Fix

* Update docker/build-push-action to version 5.4.0 ([`c881a6a`](https://github.com/entelecheia/hyperfast-docker-template/commit/c881a6ad3f7b1b652a9147ea4fcea74742768576))

## v0.30.3 (2024-05-28)

### Fix

* Update docker/login-action to version 3.2.0 ([`e4fc125`](https://github.com/entelecheia/hyperfast-docker-template/commit/e4fc1259e21601b7a757ad92c33db3239f6f89c0))

## v0.30.2 (2024-05-10)

### Fix

* **docker:** Update docker-compose files ([`4de6aaf`](https://github.com/entelecheia/hyperfast-docker-template/commit/4de6aaf574b9054c39980ce7a3a2ec5004476eca))

## v0.30.1 (2024-05-04)

### Fix

* **base:** Update base image to library/ubuntu:24.04 ([`4c93005`](https://github.com/entelecheia/hyperfast-docker-template/commit/4c930051797b5148b188af7f328fac9416b67b15))

## v0.30.0 (2024-04-10)

### Feature

* **docker:** Add entrypoint.sh.jinja script with UID GID updates ([`9eda9ef`](https://github.com/entelecheia/hyperfast-docker-template/commit/9eda9efb7d7dbb6f499c2ab6f8028fa3701604a2))

### Fix

* **docker:** Add support for custom container network name ([`b90f93f`](https://github.com/entelecheia/hyperfast-docker-template/commit/b90f93fbc1d815cefad2e7aa33ea620265012eb4))

## v0.29.10 (2024-04-05)

### Fix

* **usermod:** Remove usermod group id modification and update user id ([`c20407f`](https://github.com/entelecheia/hyperfast-docker-template/commit/c20407fca210e8447c0b5ed763b543255729f7f6))
* **docker:** Update usermod command to only update UID; fix missing group option ([`18f042d`](https://github.com/entelecheia/hyperfast-docker-template/commit/18f042d82a940f28c2c4c6ce53f5e5f43c4e19dd))

## v0.29.9 (2024-04-05)

### Fix

* **workflows:** Update deploy-{{ docker_image_name }}-image.yaml; .docker/docker.version file and updated paths for docker image variant files ([`7a3aafd`](https://github.com/entelecheia/hyperfast-docker-template/commit/7a3aafd1847c905944820c81b54d790f9755c408))

## v0.29.8 (2024-04-05)

### Fix

* **workflow:** Update path pattern in deploy yaml template ([`46edaa6`](https://github.com/entelecheia/hyperfast-docker-template/commit/46edaa6d4107521721c6608389c11c4f382eb678))

## v0.29.7 (2024-04-05)

### Fix

* **base:** Add software-properties-common to Dockerfile base image installation ([`c66ac2a`](https://github.com/entelecheia/hyperfast-docker-template/commit/c66ac2a8a745f77e3f231a98aacb503170525c14))
* **docker:** Add software-properties-common to installed packages in Dockerfile.jinja ([`c49c1cf`](https://github.com/entelecheia/hyperfast-docker-template/commit/c49c1cf9f77544682b049e25d2f7b48c5b381eee))

## v0.29.6 (2024-04-05)

### Fix

* **deployment:** Update paths for Docker image variants ([`02edfff`](https://github.com/entelecheia/hyperfast-docker-template/commit/02edfff031fc9c56cab38dd48a79d826a557a9ff))

## v0.29.5 (2024-04-04)

### Fix

* **dockerfile:** Improve user id handling and chown commands ([`d2dc310`](https://github.com/entelecheia/hyperfast-docker-template/commit/d2dc3102790a1037ce1e895c301151f521b9d0ea))
* **deploy:** Added latest tag for docker image ([`7c35c83`](https://github.com/entelecheia/hyperfast-docker-template/commit/7c35c83898fcd67efd8317c333c92a98eee211f3))

## v0.29.4 (2024-04-04)

### Fix

* **docker.common.env:** Update CONTAINER_USERNAME variable assignment ([`72d854a`](https://github.com/entelecheia/hyperfast-docker-template/commit/72d854a2c4c9a2edbb6aa86cf4589628fd7b1436))
* **env:** Update container username assignment; as the container username was being assigned incorrectly, this commit fixes it by correctly assigning the container username variable. ([`2a1d81d`](https://github.com/entelecheia/hyperfast-docker-template/commit/2a1d81d35f6e48ead59220195625c19ea4d9610d))

## v0.29.3 (2024-04-04)

### Fix

* **docker:** Fix condition for copying apt packages ([`3aa39bf`](https://github.com/entelecheia/hyperfast-docker-template/commit/3aa39bfda99a7054ddf50f65664da3c7225bb081))
* **doc:** Update README.md.jinja for Docker image naming ([`9cdf3b1`](https://github.com/entelecheia/hyperfast-docker-template/commit/9cdf3b13a10bce4d1d16f28eedb9ad59918242ee))

## v0.29.2 (2024-04-04)

### Fix

* **actions/checkout:** Update actions/checkout version to v4 ([`b557030`](https://github.com/entelecheia/hyperfast-docker-template/commit/b557030b0512cb885711f6251cef21c8a41a3fda))
* **docker:** Update installation of docker apt packages ([`26bae9f`](https://github.com/entelecheia/hyperfast-docker-template/commit/26bae9fc47980f84a98429492110809298d4d2f0))

## v0.29.1 (2024-04-04)

### Fix

* **workflows:** Update Dockerfile build path ([`11b438a`](https://github.com/entelecheia/hyperfast-docker-template/commit/11b438a93b607a334bec125ce27a738bad2c0be2))

## v0.29.0 (2024-04-04)

### Feature

* **docker:** Add docker-compose base configuration files and scripts ([`488668e`](https://github.com/entelecheia/hyperfast-docker-template/commit/488668e62c95078f1c31649743d3cfea0fb9599e))
* **docker:** Update docker-compose script to include the name variable ([`e1c438b`](https://github.com/entelecheia/hyperfast-docker-template/commit/e1c438bb938be1e791c13b9baa8f7c17492e1c6f))

## v0.28.7 (2024-03-16)

### Fix

* **docker:** Upgrade build-push-action version to v5.3.0 ([`2292ed9`](https://github.com/entelecheia/hyperfast-docker-template/commit/2292ed912e64214ddfc5852bd45b97bacd51d2af))

## v0.28.6 (2024-03-13)

### Fix

* **workflows:** Update docker login-action to v3.1.0 ([`64769a2`](https://github.com/entelecheia/hyperfast-docker-template/commit/64769a2fd71f581f406391821137fd471f07b8ff))

## v0.28.5 (2024-03-10)

### Fix

* **workflow:** Upgrade docker/build-push-action to v5.2.0 ([`b69d701`](https://github.com/entelecheia/hyperfast-docker-template/commit/b69d7016357db1929098d0edfd71e4af439c2d94))

## v0.28.4 (2024-01-31)

### Fix

* **dependencies:** Upgrade docker/metadata-action from v5.5.0 to v5.5.1 ([`5892091`](https://github.com/entelecheia/hyperfast-docker-template/commit/5892091d179c3a4575aad399028efd2df3862389))

## v0.28.3 (2024-01-13)

### Fix

* **dependencies:** Upgrade docker/metadata-action to v5.5.0 ([`66300b6`](https://github.com/entelecheia/hyperfast-docker-template/commit/66300b6e79e0d393d752304ffb4ee8e549aaf22b))
* **workflows:** Upgrade docker/metadata-action to v5.5.0 ([`3930f81`](https://github.com/entelecheia/hyperfast-docker-template/commit/3930f813e229efd4bf9d14a3a6e55d56c67ff81a))

## v0.28.2 (2023-12-19)

### Fix

* **actions:** Update docker/metadata-action to v5.4.0 ([`fcf2a49`](https://github.com/entelecheia/hyperfast-docker-template/commit/fcf2a49f7c9fc4cfd757e10d056d0377fbae319b))

## v0.28.1 (2023-12-04)

### Fix

* **github-workflows:** Upgrade docker/metadata-action to v5.3.0 ([`ebd18da`](https://github.com/entelecheia/hyperfast-docker-template/commit/ebd18da579797520367486e250a26c4b02e9848b))

## v0.28.0 (2023-11-12)

### Feature

* **docker:** Add docker app image variant environment variables ([`8abf461`](https://github.com/entelecheia/hyperfast-docker-template/commit/8abf46115dce7645d38cd190f07ce7b95857c055))
* **docker:** Add specific pid naming to docker variant commands ([`7d97c54`](https://github.com/entelecheia/hyperfast-docker-template/commit/7d97c54a04a2557018d5bb611c05c65aeeba557e))

## v0.27.0 (2023-10-30)

### Feature

* **docker-config:** Add docker image version variable ([`41e3962`](https://github.com/entelecheia/hyperfast-docker-template/commit/41e39620602e38a76de074fc9b1c9877eb0f9dce))
* **docker:** Update image version variable name in docker.common.env.jinja ([`f78de66`](https://github.com/entelecheia/hyperfast-docker-template/commit/f78de668ab02c0ced958be953d2c0c2e991f3b81))
* **copier.yaml:** Add image versioning variables ([`62d9195`](https://github.com/entelecheia/hyperfast-docker-template/commit/62d91956c1d7fbec46abbe7c64f9099a08b64026))
* **.docker:** Add docker.version.jinja file ([`5aa2af7`](https://github.com/entelecheia/hyperfast-docker-template/commit/5aa2af75340bbe3855e73bec7df29cbfa49f8871))

## v0.26.0 (2023-10-21)

### Feature

* **dockerfile:** Add user permissions update ([`c47ccd8`](https://github.com/entelecheia/hyperfast-docker-template/commit/c47ccd87bdbc07ba6db5f453da1d412a7e10f029))
* **docker:** Add default.env.jinja configuration file ([`550de10`](https://github.com/entelecheia/hyperfast-docker-template/commit/550de101cea599e0f0ae6649e00679a962c06f62))
* **docker-compose.sh.jinja:** Add project ID option, add project ID specific environment variable loading, add local workspace preparation ([`b327653`](https://github.com/entelecheia/hyperfast-docker-template/commit/b32765387c457b1e1751c99e169b5b9d29806d5a))
* **docker:** Add configurable directories and project ID support ([`f267e80`](https://github.com/entelecheia/hyperfast-docker-template/commit/f267e804036d73a0616177d87644fdab35c47607))
* **github-actions:** Adjust workflows for docker branch ([`bd9b659`](https://github.com/entelecheia/hyperfast-docker-template/commit/bd9b6595a1f568c59c705c131d5c3876b3eac625))

## v0.25.1 (2023-10-20)

### Fix

* **docker:** Update build from image convention ([`2f7823f`](https://github.com/entelecheia/hyperfast-docker-template/commit/2f7823f7ff9fdc71549099d1c12ca5f4f47958a0))

## v0.25.0 (2023-10-13)

### Feature

* **docker:** Upgrade pip, setuptools, wheel, ninja in Dockerfile.base ([`fd5b4ab`](https://github.com/entelecheia/hyperfast-docker-template/commit/fd5b4abd0afdedfee18ff39d9583e159b413783c))

## v0.24.1 (2023-10-11)

### Fix

* **.github/workflows:** Update Dockerfile and docker-compose file paths in release.yaml ([`4f24f3c`](https://github.com/entelecheia/hyperfast-docker-template/commit/4f24f3c668b86a339bfe61a5be321b4e18af2204))

## v0.24.0 (2023-10-10)

### Feature

* **docker-compose:** Add HF_HOME mapping to volumes ([`bf597e1`](https://github.com/entelecheia/hyperfast-docker-template/commit/bf597e10cb185ba24d5c0c21900a2d6e2e459af1))
* **system-settings:** Allow customization of SSH public key and HuggingFace home path ([`4c9ce3c`](https://github.com/entelecheia/hyperfast-docker-template/commit/4c9ce3c5a52838fa20a7bd79745ddf330c417d23))
* **docker:** Add variables if dotfiles installed ([`6b5c87d`](https://github.com/entelecheia/hyperfast-docker-template/commit/6b5c87d05f6a2faef55403ad603344a767abedc0))
* **docker-compose:** Add conditions for dotfiles installation ([`2eb04ef`](https://github.com/entelecheia/hyperfast-docker-template/commit/2eb04efdeadb7164c167f83ccb4d2c3dbefc1139))

### Fix

* **docker-scripts:** Replace clone with ssh setup and modify jupyter command ([`721b04e`](https://github.com/entelecheia/hyperfast-docker-template/commit/721b04e4f28529e89932e665899529ae17bc6b3c))

## v0.23.5 (2023-10-09)

### Fix

* **docker:** Remove symbolic links for Python and pip ([`3cbdc18`](https://github.com/entelecheia/hyperfast-docker-template/commit/3cbdc18e882303c1f50130398083455910ec280b))

## v0.23.4 (2023-10-09)

### Fix

* **dockerfile:** Change python command syntax ([`f1e17ab`](https://github.com/entelecheia/hyperfast-docker-template/commit/f1e17ab5569148484e5bd59889b6a6dc53e56465))

## v0.23.3 (2023-10-09)

### Fix

* **docker:** Use variable for python command ([`def6678`](https://github.com/entelecheia/hyperfast-docker-template/commit/def66786fd488d2a1f6df589e0602edff0f940ca))

## v0.23.2 (2023-10-09)

### Fix

* **docker:** Update ENVs and ARGs in Dockerfile.base ([`59de4a8`](https://github.com/entelecheia/hyperfast-docker-template/commit/59de4a86a27b6581b55db6780d1be06150d444db))

## v0.23.1 (2023-10-09)

### Fix

* **docker:** Remove redundant chown command ([`ff0f2b4`](https://github.com/entelecheia/hyperfast-docker-template/commit/ff0f2b486168c581a15419b04998061e464a61a8))

## v0.23.0 (2023-10-09)

### Feature

* **docker:** Add builder stage to Dockerfile, add python-virtual-environment creation, add support for runtime image stage ([`2777efe`](https://github.com/entelecheia/hyperfast-docker-template/commit/2777efe13da89a1d48670896d6e9a16a50335cb3))
* **copier.yaml:** Add variables for app installation root, directory name, clone source code, and source repository ([`f258bdc`](https://github.com/entelecheia/hyperfast-docker-template/commit/f258bdc3825f2750fef8a20d93b29ddfeeff7ab3))

## v0.22.1 (2023-10-08)

### Fix

* **docker:** Add user permissions fix-up in container startup script ([`d1bb50b`](https://github.com/entelecheia/hyperfast-docker-template/commit/d1bb50bbbdc4bc94d7f37aab81c59b0f64eaf107))

## v0.22.0 (2023-10-02)

### Feature

* **docker-scripts:** Load and print environment variables ([`fa3935c`](https://github.com/entelecheia/hyperfast-docker-template/commit/fa3935cb8f733fa017c47b80fcac0c01a3511443))
* **.docker:** Add printing of loaded environment variables ([`509bafa`](https://github.com/entelecheia/hyperfast-docker-template/commit/509bafa6ea1c55fbacbe0d7ad5a74a0c9f4b9083))

## v0.21.0 (2023-10-02)

### Feature

* **scripts:** Add free disk space script in .github folder ([`dcbdc6f`](https://github.com/entelecheia/hyperfast-docker-template/commit/dcbdc6f7cd25770131e4b9166562782a637a639c))
* **.github/workflows:** Add disk space securing script before build ([`5224a92`](https://github.com/entelecheia/hyperfast-docker-template/commit/5224a9216b3475d3218a2e22d12cbb830578f52f))

## v0.20.1 (2023-10-02)

### Fix

* **docker:** Remove sudo from pip install command in dockerfile.base ([`25c23db`](https://github.com/entelecheia/hyperfast-docker-template/commit/25c23db79fc962ab0491af2ddeea771260bc91fe))
* **docker:** Remove sudo from pip install command ([`29d1e36`](https://github.com/entelecheia/hyperfast-docker-template/commit/29d1e3607e220b7075f1909af3105fcea8edbc6c))

## v0.20.0 (2023-10-01)

### Feature

* **Makefile:** Add symlink for global docker env file for local development ([`d25159c`](https://github.com/entelecheia/hyperfast-docker-template/commit/d25159c8b2431af87dfd1195d5748fc1991749d2))
* **Makefile.jinja:** Add symlink global docker env function ([`f25a88e`](https://github.com/entelecheia/hyperfast-docker-template/commit/f25a88ef14ab434dbe72bae5f6bdc9cb98553907))

## v0.19.0 (2023-10-01)

### Feature

* **copier:** Add python version option ([`ba0ea05`](https://github.com/entelecheia/hyperfast-docker-template/commit/ba0ea059a1071de690678abe71ab60e029e5858e))

### Fix

* **dockerfile:** Support dynamic python version ([`8e209d8`](https://github.com/entelecheia/hyperfast-docker-template/commit/8e209d8e340cdc323b8d4573d640141468c6c266))

## v0.18.0 (2023-10-01)

### Feature

* **docker:** Add requirements-base pip installation in Dockerfile ([`5ce007f`](https://github.com/entelecheia/hyperfast-docker-template/commit/5ce007ff936d208edccb4d4ed6365b468e01928c))

## v0.17.0 (2023-08-31)

### Feature

* **docker-scripts:** Add detached mode for launching docker app image ([`e4959c5`](https://github.com/entelecheia/hyperfast-docker-template/commit/e4959c5f4521a7ea22b30282152e9318574beeb2))
* **copier.yaml:** Add docker_name_prefix configuration ([`efdf17e`](https://github.com/entelecheia/hyperfast-docker-template/commit/efdf17eece52996aedc53f5f2ad9a9514f05b4b9))
* **docker:** Enhance environment variables loading ([`50d33b0`](https://github.com/entelecheia/hyperfast-docker-template/commit/50d33b06286e066afc744bf4dabc8ae9ddd9bc75))

### Fix

* **github-actions:** Use correct syntax for GitHub Actions variables ([`cdfc363`](https://github.com/entelecheia/hyperfast-docker-template/commit/cdfc36387a59619462112b92229389590567ff4a))
* **docker:** Correct typo in CONTAINER_REGISTRY variable name ([`09db2b4`](https://github.com/entelecheia/hyperfast-docker-template/commit/09db2b474ee0d8769b0d438d93893e81961ccf0c))

## v0.16.1 (2023-08-30)

### Fix

* **docker:** Add python environment variables and set timezone in Dockerfile.app ([`610e245`](https://github.com/entelecheia/hyperfast-docker-template/commit/610e245fed582408e02276fb15400fee8966f15f))

## v0.16.0 (2023-08-30)

### Feature

* **docker:** Add Python local bin to PATH ([`b978e4c`](https://github.com/entelecheia/hyperfast-docker-template/commit/b978e4c59984d4d240833ff76dac15beecf89530))

## v0.15.3 (2023-08-30)

### Fix

* **docker:** Update pip installation in Dockerfile.base ([`3492bca`](https://github.com/entelecheia/hyperfast-docker-template/commit/3492bcac80c602c018102a1509402e62b231f8ee))
* **dockerfile:** Update pip installation in Dockerfile base template ([`513ffb4`](https://github.com/entelecheia/hyperfast-docker-template/commit/513ffb426daaa9f41eb321280a4c26492337e170))

## v0.15.2 (2023-08-30)

### Fix

* **docker:** Improve environment variable loading and network preparation checks ([`9975d50`](https://github.com/entelecheia/hyperfast-docker-template/commit/9975d504822b220bef673a0be10eb0618978e4d6))

## v0.15.1 (2023-08-29)

### Fix

* **dockerfile:** Correct duplication in 'get-pip.py' download command ([`8565f7e`](https://github.com/entelecheia/hyperfast-docker-template/commit/8565f7e5dbdd685f6627ac731c897989fed4e2c6))

## v0.15.0 (2023-08-29)

### Feature

* **docker:** Add option to install latest pip and setuptools ([`76695b4`](https://github.com/entelecheia/hyperfast-docker-template/commit/76695b410bb4347227f3a70773d09538b4eff74b))

## v0.14.3 (2023-08-29)

### Fix

* **workflows:** Change APP_VERSION to IMAGE_VERSION in deploy-base-image.yaml ([`8a836e2`](https://github.com/entelecheia/hyperfast-docker-template/commit/8a836e27bc5fbe6a02c0ecdf45702c9ba241999e))

## v0.14.2 (2023-08-29)

### Fix

* **github-actions:** Rename variable names for container user details ([`ba1d3f8`](https://github.com/entelecheia/hyperfast-docker-template/commit/ba1d3f8263d26b27427c20108ef51dae6f102d82))
* **deploy-scripts:** Update environment variable names ([`4ffbd47`](https://github.com/entelecheia/hyperfast-docker-template/commit/4ffbd47339dcb0eee757108280ce0f4cf9bbc271))

## v0.14.1 (2023-08-29)

### Fix

* **workflows:** Add common environment variables from dotenv ([`c1a8982`](https://github.com/entelecheia/hyperfast-docker-template/commit/c1a8982ab6e80b851928322bf9ef02f8a35afaef))

## v0.14.0 (2023-08-29)

### Feature

* **README:** Add description for different environment variables files ([`c2fdc7a`](https://github.com/entelecheia/hyperfast-docker-template/commit/c2fdc7afa0c37d64aa001cddda7bbcc3d11a741d))
* **docker:** Add sync host folder group permissions to container ([`78f5736`](https://github.com/entelecheia/hyperfast-docker-template/commit/78f57367f9fdb7eedcaba52df8ca5e5fc4d5ce49))
* **docker:** Add Docker group ID to environment variables ([`977aa13`](https://github.com/entelecheia/hyperfast-docker-template/commit/977aa13201b075e97dfd6c8091eaea25c75bc195))
* **docker-compose:** Add DOCKER_GID environment variable ([`b518a17`](https://github.com/entelecheia/hyperfast-docker-template/commit/b518a174a549e701abc8d6731c8fd933a56a78ab))
* **docker-config:** Update variables and arrangement ([`3dd22fa`](https://github.com/entelecheia/hyperfast-docker-template/commit/3dd22fa36ae288cd59666bd0ca3424c727cad8a6))
* **docker:** Add common env variables for docker configuration ([`238ce12`](https://github.com/entelecheia/hyperfast-docker-template/commit/238ce122961cac1bf8aaf943929e19c7cf063a34))
* **copier.yaml:** Add docker_service_name field ([`b603672`](https://github.com/entelecheia/hyperfast-docker-template/commit/b6036722226ef42f69279c25d20435020e0f706d))

## v0.13.0 (2023-08-29)

### Feature

* **docker-config:** Enable building images from Dockerfile ([`0cfcfc7`](https://github.com/entelecheia/hyperfast-docker-template/commit/0cfcfc7d4dbe632c05c91d6dae758c31cc6aa652))
* **docker:** Add build images from Dockerfile option ([`9d38c0c`](https://github.com/entelecheia/hyperfast-docker-template/commit/9d38c0c8d4372a79580708f9e77cfdd8cd992db5))

## v0.12.0 (2023-08-27)

### Feature

* **docker-scripts:** Load secret environment variables from .env.secret ([`771e368`](https://github.com/entelecheia/hyperfast-docker-template/commit/771e36816c899102e48240c4c9a5bf859073ee53))
* **.copier-template:** Add .env.secret file ([`e128d6f`](https://github.com/entelecheia/hyperfast-docker-template/commit/e128d6fd55072fcb69a83d80bd6d5b96aecae369))

## v0.11.1 (2023-08-24)

### Fix

* **readme:** Replace hardcoded port values with template variables ([`c88db9d`](https://github.com/entelecheia/hyperfast-docker-template/commit/c88db9dc3d06dc0a13c0c9b1d7567214fb2f0d12))
* **copier:** Add main branch configuration ([`98b59de`](https://github.com/entelecheia/hyperfast-docker-template/commit/98b59de33b346829f619a0300f0d3476b63aeace))

## v0.11.0 (2023-08-23)

### Feature

* **.github/workflows:** Add success check for workflow run ([`ce8e16d`](https://github.com/entelecheia/hyperfast-docker-template/commit/ce8e16dbee37975411b064ae338b81647c1443fd))

### Fix

* **workflows:** Allow manual dispatch for deploy-app-image workflow ([`a272115`](https://github.com/entelecheia/hyperfast-docker-template/commit/a2721150d2c4ce9762951a74a4240a40a264ba4d))
* **docker:** Switch from pip to pip3 in Dockerfile.base.jinja ([`fa70f04`](https://github.com/entelecheia/hyperfast-docker-template/commit/fa70f04d9200b08a32b001f8c8d7b4811efee7c2))

## v0.10.0 (2023-08-23)

### Feature

* **copier.yaml:** Reorganize docker related configurations and add deploy workflows option ([`2518dc8`](https://github.com/entelecheia/hyperfast-docker-template/commit/2518dc8765408d58bc1427230693601bfa338d7f))

### Fix

* **github-workflows:** Rename deploy-app-image and deploy-base-image files with conditional inclusion ([`45d791a`](https://github.com/entelecheia/hyperfast-docker-template/commit/45d791aa255e6b060cc8618f0ac5ab941f669048))

## v0.9.0 (2023-08-23)

### Feature

* **.github/workflows:** Add new semantic-release workflow ([`119b96c`](https://github.com/entelecheia/hyperfast-docker-template/commit/119b96cd06dbd39cd2cfe95d4c279fcc12a73450))

## v0.8.0 (2023-08-23)

### Feature

* **docker-config:** Add new ports and tokens ([`1f35d2b`](https://github.com/entelecheia/hyperfast-docker-template/commit/1f35d2bc8582c8ba4bd870a4716be7f7e0621e3a))
* **docker-compose:** Add workspace location and system hostname arguments ([`6514a56`](https://github.com/entelecheia/hyperfast-docker-template/commit/6514a565766410701a0c943a27bfab4113736670))
* **copier.yaml:** Add ssh_port, jupyter_port, jupyter_token, web_service_port and web_service_host_port configurations ([`e50f184`](https://github.com/entelecheia/hyperfast-docker-template/commit/e50f184039fe26018d77d82e478825876c06dd61))

## v0.7.2 (2023-08-22)

### Fix

* **Makefile.jinja:** Change test-initialize directory to tmp ([`77b2b48`](https://github.com/entelecheia/hyperfast-docker-template/commit/77b2b4894138da9a98d460ad29a24ed9a209cd71))

### Documentation

* **README:** Update setup instructions and environment variable info ([`2ea6175`](https://github.com/entelecheia/hyperfast-docker-template/commit/2ea6175774fe36b0487a1d8d6fbb15a08b08e8e6))
* **.copier-template:** Add detailed README.md.jinja template ([`816b4ec`](https://github.com/entelecheia/hyperfast-docker-template/commit/816b4ec620d86f3ea9e380c47cbdb3f5251b1b2b))

## v0.7.1 (2023-08-22)

### Fix

* **docker:** Simplify Docker image naming ([`0354dfb`](https://github.com/entelecheia/hyperfast-docker-template/commit/0354dfb985898af5737808c3e74eff934464b8a0))
* **docker:** Modify IMAGE_NAME in docker base env file ([`caa0d2e`](https://github.com/entelecheia/hyperfast-docker-template/commit/caa0d2e6bc03861ee86004afe400bb66a5aee3ea))
* **.github/workflows:** Change VARIANT to BASE_VARIANT in deploy-base-image workflow ([`e999414`](https://github.com/entelecheia/hyperfast-docker-template/commit/e999414cf9efbd8fb924116ea5b6db0d675f23b4))

## v0.7.0 (2023-08-22)

### Feature

* **docker:** Add user email, full name and GitHub username, update clone directory name, add Jupyter port and token configuration ([`3b260c3`](https://github.com/entelecheia/hyperfast-docker-template/commit/3b260c30aa9180ac4aac1ee0f19dc827139b647b))
* **docker:** Add commands to run and launch app and base images ([`5a628be`](https://github.com/entelecheia/hyperfast-docker-template/commit/5a628be05f1bcbc9f860fd596a2e6be940fc9186))
* **Makefile:** Add force and test initialization commands ([`9f7d9fa`](https://github.com/entelecheia/hyperfast-docker-template/commit/9f7d9fabf59b58ad64cf57f446e375ed590ba3e1))
* **.copier-config:** Update config values and add new configs ([`716434a`](https://github.com/entelecheia/hyperfast-docker-template/commit/716434af7645756e0720b27ceafd8d43a34c0c5f))
* **docker-compose:** Allow specification of image tags ([`93c10e3`](https://github.com/entelecheia/hyperfast-docker-template/commit/93c10e3f77e79f72018a524ca8bfee9fe752995d))
* **docker-compose:** Add new environment variables and volume mappings ([`5a1eb60`](https://github.com/entelecheia/hyperfast-docker-template/commit/5a1eb60a0f1148fa68234c5d3af0d588f57c322d))
* **docker:** Add logic to clone repo and start jupyter lab ([`8500480`](https://github.com/entelecheia/hyperfast-docker-template/commit/8500480c2b764657a4beeabc7f585919913b8d68))

### Fix

* **dockerfile:** Change installation order and condition for openssh-server ([`5ec40d2`](https://github.com/entelecheia/hyperfast-docker-template/commit/5ec40d22f4298713ac9d72317ea80d69a5c22d7f))
* **template:** Replace project_name with docker_project_name ([`0fd36e9`](https://github.com/entelecheia/hyperfast-docker-template/commit/0fd36e9ef0165245a785dadf31bcb29a30b0a136))
* **copier.yaml:** Update variable names and default value messages ([`26832cb`](https://github.com/entelecheia/hyperfast-docker-template/commit/26832cb134243fce243da99d495bfb1a7ba1eaaa))
* **copier-template:** Rename .copier-config.yaml to .copier-docker-config ([`555a384`](https://github.com/entelecheia/hyperfast-docker-template/commit/555a38420ba806e8c1a4607eadf9328a300ee399))
* **docker:** Change variable docker_registry to docker_project_name ([`c76f859`](https://github.com/entelecheia/hyperfast-docker-template/commit/c76f859c75c1a8ad82acebe045187e8616d3e8cb))

## v0.6.2 (2023-08-21)

### Fix

* **docker:** Remove APP_VERSION from docker.app.env ([`6a5bd11`](https://github.com/entelecheia/hyperfast-docker-template/commit/6a5bd11a8da2820f0cb99bc6a282a588ba51560d))
* **project:** Rename Makefile to Makefile.jinja ([`c94bd52`](https://github.com/entelecheia/hyperfast-docker-template/commit/c94bd521132d0d176513ecbb12eaa10fa55a6574))

## v0.6.1 (2023-08-21)

### Fix

* **docker:** Update base image for Docker build ([`e6b5726`](https://github.com/entelecheia/hyperfast-docker-template/commit/e6b572682bbe889e64eb268338a5cb115a91d78a))

## v0.6.0 (2023-08-21)

### Feature

* **docker-scripts:** Add login command to docker-compose script ([`2d750e3`](https://github.com/entelecheia/hyperfast-docker-template/commit/2d750e37b84519ece66f3cc89c7255d9e98b2144))
* **docker:** Add USERNAME environment variable ([`4816f1b`](https://github.com/entelecheia/hyperfast-docker-template/commit/4816f1bf3d5cb2422eee3fa97ca3e8490e319323))
* **copier.yaml:** Add CUDA device config ([`b48f0d5`](https://github.com/entelecheia/hyperfast-docker-template/commit/b48f0d5c3ee187b901e9d01297db534242955637))
* **docker:** Add ipc mode and run command variables to docker config ([`2446ae0`](https://github.com/entelecheia/hyperfast-docker-template/commit/2446ae0778d1b952bedc64ca064b0611d2abf5c0))
* **license:** Add License templates ([`dd3f50a`](https://github.com/entelecheia/hyperfast-docker-template/commit/dd3f50acfc1b2a55972c88d5524a3637fb2cf420))
* **license:** Add CC-BY-4.0 license ([`4797420`](https://github.com/entelecheia/hyperfast-docker-template/commit/479742048a27938d6e6e5b17095803a2881476b5))
* **license:** Add Apache-2.0 license template ([`87cbad0`](https://github.com/entelecheia/hyperfast-docker-template/commit/87cbad0f3b388aa9009c0853f8a62527e3034652))
* **copier.yaml:** Add author and email fields with validation ([`f087b99`](https://github.com/entelecheia/hyperfast-docker-template/commit/f087b999c709a4f4c7530fe1909194123546be8f))
* **contributing:** Add contributing guide ([`6253d18`](https://github.com/entelecheia/hyperfast-docker-template/commit/6253d184fc4aeb5b57136203eec7594349404e8e))
* **copier-template:** Add Code of Conduct template ([`d2b11c2`](https://github.com/entelecheia/hyperfast-docker-template/commit/d2b11c291f596c7de90efb9992e2ff860a75bbca))
* **poe:** Add tasks for versioning and changelog generation ([`d5bf1cb`](https://github.com/entelecheia/hyperfast-docker-template/commit/d5bf1cbf22a98355342f0b65aada927cf3f6f81f))
* **.copier-template:** Add CHANGELOG.md file ([`6327263`](https://github.com/entelecheia/hyperfast-docker-template/commit/63272637b2c1152fee967b9f4363a2fa0edc8f4d))
* **copier-template:** Add new pyproject.toml.jinja file ([`bf30d21`](https://github.com/entelecheia/hyperfast-docker-template/commit/bf30d2152c08cfe11b1aaeea8be5ba0870e25880))
* **.copier-template:** Add .gitattributes file ([`22e6488`](https://github.com/entelecheia/hyperfast-docker-template/commit/22e648816b92c8fea5d62107b5b1524a962af608))
* **.editorconfig:** Add new file with configuration settings ([`6abc735`](https://github.com/entelecheia/hyperfast-docker-template/commit/6abc735f8d7948fff7a2a62a882d3ecc0b1a0394))
* **.copier-template:** Add .copierignore file ([`a6a0a6d`](https://github.com/entelecheia/hyperfast-docker-template/commit/a6a0a6d8abe6c30b94353e2fc6c0bd1ca2dc2a0e))

## v0.5.0 (2023-08-21)

### Feature

* **copier.yaml:** Add new fields for source repository cloning ([`1013717`](https://github.com/entelecheia/hyperfast-docker-template/commit/1013717361bf96e20ec432da6061ef72e6233cd3))
* **docker:** Add conditional execution for starting ssh service, add cloning app repository from Github, add starting Jupyter notebook in background ([`d332aa9`](https://github.com/entelecheia/hyperfast-docker-template/commit/d332aa98506bce7ecf0c178d72c7e6e15e842c47))
* **dockerfile:** Clone source code based on clone_source_code value ([`442c18d`](https://github.com/entelecheia/hyperfast-docker-template/commit/442c18d8a1d1ff458b413c93a9309ac7cac3579e))
* **copier.yaml:** Add NVIDIA GPU enable option ([`5701513`](https://github.com/entelecheia/hyperfast-docker-template/commit/570151349e7fb67c9d7cdcd48d1f76cb09d14e90))
* **docker:** Enable pip installation of python dependencies ([`0f12dea`](https://github.com/entelecheia/hyperfast-docker-template/commit/0f12deacd603496f82004da076e1e79296eb7aa4))
* **Dockerfile:** Add command customization via template variable ([`d9649d8`](https://github.com/entelecheia/hyperfast-docker-template/commit/d9649d866f11a88c0726b356b3a2d5308405d7a6))
* **copier.yaml:** Add project_license selection ([`67a0193`](https://github.com/entelecheia/hyperfast-docker-template/commit/67a01930161b9913eda7e4f7b13df8382697fc95))
* **github-actions:** Add workflows for deploying app and base images ([`1ff6d3f`](https://github.com/entelecheia/hyperfast-docker-template/commit/1ff6d3f8b4441672fb0f106b0acc0e10120e0d06))
* **Makefile:** Add Docker-related commands ([`a744019`](https://github.com/entelecheia/hyperfast-docker-template/commit/a7440196ae6e0f2f0cba2030e9e0cff9711ac378))

## v0.4.3 (2023-08-21)

### Fix

* **.github/workflows:** Update triggers and tags in deployment workflows ([`81419c5`](https://github.com/entelecheia/hyperfast-docker-template/commit/81419c5b65e6e4af8b7e39f35323acc9e0fd70ff))

## v0.4.2 (2023-08-21)

### Fix

* **github-workflows:** Update tags trigger for app and base image deployments ([`ce5c741`](https://github.com/entelecheia/hyperfast-docker-template/commit/ce5c74103b624233f6096bd1e6db5058351d4cd0))

## v0.4.1 (2023-08-21)

### Fix

* **release:** Remove skip ci from commit subject ([`83c1c7a`](https://github.com/entelecheia/hyperfast-docker-template/commit/83c1c7aeb0e6e719c0df7a7e9f5fd92963e52b30))

## v0.4.0 (2023-08-21)

### Feature

* **Makefile:** Add docker-login command ([`08fe3a7`](https://github.com/entelecheia/hyperfast-docker-template/commit/08fe3a773555c22e048c95bd1dbb593d1195c73e))

## v0.3.0 (2023-08-21)

### Feature

* **docker:** Add container registry ([`a87d022`](https://github.com/entelecheia/hyperfast-docker-template/commit/a87d022cf4c30a21ca9b9f6f268bc5b6ca0ca3f1))
* **docker:** Add new docker-compose script ([`5ef6e90`](https://github.com/entelecheia/hyperfast-docker-template/commit/5ef6e90223bc9e9d2cc5fffbe5689fb7c4c48023))
* **.github:** Add deploy-app-image workflow ([`91e1e78`](https://github.com/entelecheia/hyperfast-docker-template/commit/91e1e7889af9bba4b894a1715522ea97a941f62d))
* **docker-compose.base:** Add new ARGs to docker ([`d3eca6f`](https://github.com/entelecheia/hyperfast-docker-template/commit/d3eca6fd9b90461a8caf90b06a7364295984452a))

## v0.2.0 (2023-08-21)

### Feature

* **.github/workflows:** Support main branch in deploy-base-image workflow ([`e73279c`](https://github.com/entelecheia/hyperfast-docker-template/commit/e73279cd6704d3a2e8dc4464975ad6271ff05e15))
* **docker:** Add tags to docker-compose.base.yaml ([`1901f43`](https://github.com/entelecheia/hyperfast-docker-template/commit/1901f43b8bc76429066f85d965f9f9bc6c1de25a))
* **.github/workflows:** Add dotenv action to docker deployment workflow ([`de8a929`](https://github.com/entelecheia/hyperfast-docker-template/commit/de8a929525c1973447282c43bd7c202469aefc84))
* **docker:** Add docker.release.env configuration file ([`815d977`](https://github.com/entelecheia/hyperfast-docker-template/commit/815d977d4851f3cfbe68254fd38b001f85b08d87))
* **.github/workflows:** Add dynamic tagging in deploy-image.yaml ([`147d6a0`](https://github.com/entelecheia/hyperfast-docker-template/commit/147d6a03f67bb66efdf2700fc2ad71da19ba39ae))
* **Docker:** Add python3-launchpadlib to installs ([`bc3d0d6`](https://github.com/entelecheia/hyperfast-docker-template/commit/bc3d0d6c62fbf9e4b70ce730c11f3bf8f023202e))
* **docker:** Update Dockerfile labels and fix apt-get update ([`9b6020f`](https://github.com/entelecheia/hyperfast-docker-template/commit/9b6020f9d5589c94f94f9db35737a20b295aadc5))
* **.github/workflows:** Add docker image deployment script ([`33d8ab2`](https://github.com/entelecheia/hyperfast-docker-template/commit/33d8ab221993441484bcea79e0b180fb67fb6c88))
* **docker:** Add docker login script ([`2b6369e`](https://github.com/entelecheia/hyperfast-docker-template/commit/2b6369e0c7926201450e81493e42eb2adf00c84e))
* **docker:** Add new docker configuration script ([`6da71d3`](https://github.com/entelecheia/hyperfast-docker-template/commit/6da71d3b691e0c58af0dfa79bc9b108d715b7e72))
* **docker:** Add commands in docker-build.sh ([`3541852`](https://github.com/entelecheia/hyperfast-docker-template/commit/3541852576cc5fbac034521791bc81524e297a05))
* **docker:** Initialize base docker-compose configuration ([`5238eaa`](https://github.com/entelecheia/hyperfast-docker-template/commit/5238eaac93f0e01d4bddddee9b4bb82633af0c6b))
* **docker:** Add new docker configurations ([`797701a`](https://github.com/entelecheia/hyperfast-docker-template/commit/797701aa283933f5b4fd36cdb69b534ef78f111e))
* **docker:** Add new Dockerfile.base and associated scripts ([`a273478`](https://github.com/entelecheia/hyperfast-docker-template/commit/a2734785e33f3434e0786c6e7f21a3cbc490e699))
* **docker:** Add docker.version with APP_VERSION field ([`03ec0b5`](https://github.com/entelecheia/hyperfast-docker-template/commit/03ec0b54d870feb4108e6046a543de74cedaec4f))
* **.tasks-docker.toml:** Add a new file ([`8491ac5`](https://github.com/entelecheia/hyperfast-docker-template/commit/8491ac54fb9741e20aab0442592428f7082357f1))

## v0.1.2 (2023-05-18)
### Fix
* **docker): update Dockerfile and docker-compose files for app; chore(docker:** Add docker-build and docker-config rules; ([`5b5a31e`](https://github.com/entelecheia/hyperfast-docker-template/commit/5b5a31ecdbdd6f0515426b4d0f0396ccb2ed886e))

## v0.1.1 (2023-05-18)
### Fix
* **app:** Change APP_INSTALL_ROOT to APP_PROJECT_ROOT ([`2909664`](https://github.com/entelecheia/hyperfast-docker-template/commit/2909664e9dcbc5d257efdee5374ca26d0f3bfcfd))

## v0.1.0 (2023-05-18)
### Feature
* Initial version ([`daa5516`](https://github.com/entelecheia/hyperfast-docker-template/commit/daa55160e830cd42ab0a8bea4105e0767eb900af))
