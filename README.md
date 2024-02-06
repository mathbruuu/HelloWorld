# HelloWorld

## Activate hook

you have to execute this command on the root of the repository

- git config core.hooksPath .githooks


## How to reuse this project ?

- [.github/workflows/docker_build.yml](https://github.com/mathbruuu/HelloWorld/blob/main/.github/workflows/docker_build.yml) will be trigger at every push on the main branch, you just have to push on the main branch
  
- https://github.com/mathbruuu/HelloWorld/blob/main/.github/workflows/publish_release.yml will be trigger on new release and will publish the image on the github registry
  
- The command to pull the image is : "docker pull ghcr.io/mathbruuu/day2daytestting:latest"

- Accessible here  : https://github.com/mathbruuu/HelloWorld/pkgs/container/day2daytestting

## If you want to reuse it on your own project you have some changes to do 

- go to https://github.com/mathbruuu/HelloWorld/blob/main/.github/workflows/publish_release.yml

- Update these line with your own informations
- 
      - name: Build the Docker image
        run: |
          docker build . --tag ghcr.io/<YOUR_USERNAME>/<NAME_OF_YOUR_IMAGE>:latest
          docker push ghcr.io/<YOUR_USERNAME>/<NAME_OF_YOUR_IMAGE>:latest

  



