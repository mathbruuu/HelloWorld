# HelloWorld

## Self host runner
For this project, I self host my runner, if you want to self host your runner 
settings > actions > runner > new self host runner ( follow the instructions there)

## Activate hook

you have to execute this command on the root of the repository

- git config core.hooksPath .githooks


## How to reuse this project ?

https://docs.github.com/en/actions/publishing-packages/publishing-docker-images

- create dockerhub account
- save on github secrets
	DOCKER_REPO_LOGIN
	DOCKER_REPO_PASSWORD
 
- [.github/workflows/docker_build.yml](https://github.com/mathbruuu/HelloWorld/blob/main/.github/workflows/docker_build.yml) will be trigger at every push on the main branch, you just have to push on the main branch
  
  [https://github.com/mathbruuu/HelloWorld/blob/main/.github/workflows/publish_dockerHub_githubRegistry.yml](https://github.com/mathbruuu/HelloWorld/blob/main/.github/workflows/publish_dockerHub_githubRegistry.yml)
-  will be trigger on new release and will publish the image on the github registry AND dockerhub 
- Adapt the file with your own dockerhub repository

## Create a new release

![image](https://github.com/mathbruuu/HelloWorld/assets/158568456/b037e563-d783-4678-89e2-241d00e0315f)
Create a new release here, the publish_dockerHub_githubRegistry.yml will be trigger and the image will be publish on the github registry and dockerhub


  
  



