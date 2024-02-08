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


## Create a new release

![image](https://github.com/mathbruuu/HelloWorld/assets/158568456/b037e563-d783-4678-89e2-241d00e0315f)
Create a new release here, the publish_dockerHub_githubRegistry.yml will be trigger and the image will be publish on the github registry and dockerhub

## If you want to reuse it on your own project you have some changes to do 

Adapte mathbruu/day2day with your own repository on dockerhub (dockerHub_namespace/dockerHub_Repository)

 name: Extract metadata (tags, labels) for Docker
        id: meta
        uses: docker/metadata-action@9ec57ed1fcdbf14dcef7dfbe97b2010124a938b7
        with:
          images: |
            mathbruu/day2day
            ghcr.io/${{ github.repository }} 
	    


  After pulling the image from registry you can verify if the digest of the image match with the digest on the registry
![image](https://github.com/mathbruuu/HelloWorld/assets/158568456/62e2b49b-7c24-4f00-a426-526cc2137a26)
![image](https://github.com/mathbruuu/HelloWorld/assets/158568456/735860a5-1b13-4ef0-86b4-5fd1dec31030)

  
  



