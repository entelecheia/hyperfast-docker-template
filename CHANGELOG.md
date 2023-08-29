<!--next-version-placeholder-->

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
