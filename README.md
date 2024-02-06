# HelloWorld

## Activate hook

you have to execute this command on the root of the repository

- git config core.hooksPath .githooks


## How to reuse this project ?

- [.github/workflows/docker_build.yml](https://github.com/mathbruuu/HelloWorld/blob/main/.github/workflows/docker_build.yml) will be trigger at every push on the main branch, you just have to push on the main branch
- https://github.com/mathbruuu/HelloWorld/blob/main/.github/workflows/publish_release.yml will be trigger on new release and will publish the image on the github registry
-  docker pull ghcr.io/mathbruuu/day2daytestting:latest the image can be pull with this command

