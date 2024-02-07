# docker_build.yml
- this pipeline will be trigger on every push on the master branch

## build
- The image is build after that we run the image

## test_if_container_respond
- We have to test if the web service is running so we are executing a wget on the 172.17.0.2 (docker ip)

## security_test
- simple scan analyse with a docker image for zap 

- it's an example you can implement others tools like https://github.com/OSTEsayed/OSTE-Meta-Scan

# publish_release.yml
- this pipeline will be trigger when we published a new version of the project
- it will publish the docker image on the github registry
- https://github.com/mathbruuu/HelloWorld/pkgs/container/day2daytestting


