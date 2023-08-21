<!--next-version-placeholder-->

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
