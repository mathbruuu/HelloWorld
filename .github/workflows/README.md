# https://github.com/mathbruuu/HelloWorld/blob/main/.github/workflows/publish_docker_sign.yml

- https://docs.docker.com/engine/security/trust/
- Is not used I just let it for informations. Allow to sign a image with docker and publish it on dockerhub 

- Create a dockerhub repo
- docker trust key generate NAME
- docker trust signer add --key key.pub mathbruuu docker.io/mathbruu/day2day
- private key is stored ~/.docker/trust/private
- - If you want to use it, create the secret variable, generate docker key and add it in github secret (DOCKER_PRIVATE_KEY_ID, DOCKER_PRIVATE_KEY, DOCKER_PRIVATE_KEY_PASSPHRASE)
   
- export DOCKER_CONTENT_TRUST=1 (allow to pull only signed images)
- docker trust inspect docker.io/mathbruu/testing:latest --pretty (see if image is signed)

  
# https://github.com/mathbruuu/HelloWorld/blob/main/.github/workflows/publish_release.yml
Is not used I just let it for informations. Allow to publish a image to github registry

# publish_dockerHub_githubRegistry.yml
- this pipeline will be trigger when we published a new version of the project
- it will publish the docker image on the github registry and dockerhub
- Is automaticaly sign
  
# docker_build.yml
- this pipeline will be trigger on every push on the master branch

## build
- The image is build after that we run the image

## test_if_container_respond
- We have to test if the web service is running so we are executing a wget on the 172.17.0.2 (docker ip)

## security_test
- simple scan analyse with a docker image for zap 

- it's an example you can implement others tools like https://github.com/OSTEsayed/OSTE-Meta-Scan
