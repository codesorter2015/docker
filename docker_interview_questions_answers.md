# docker

1. What is container?

   * A container is a way to package application with all the necessary dependencies and configuration. 
   * Portable artifact, means package can be easily shared and moved round.
   * It helps development and deployment more efficient. 
   * It's own isolated operating system layer.
   * Own isolated environment.
   * Layers of images.
   * Container is running environment for image.
   * Port binded (talk to application running inside of container)
   * Virtual file system

2. Where do container live?
   
   Container Repository
   
3. Docker Image

   the actual Package
   
4. How to uninstall older version docker in ubuntu?
   
   sudo apt-get remove docker docker-engine docker.io
   
5. Basic commands

   docker pull {image_name}:{version}
   
   docker run {image_name}:{version}
   
   docker ps 
   
   docker ps -a
   
   docker run -d {image_name}
   
   docker stop {container_id}
   
   docker start {container_id}
   
   docker images
   
   docker logs {container_id} or docker logs {container_name}
   
6. How to check running and stopped container

   docker ps -a
   
7. Binding

   docker run -p6000:4000 -d {image_name}
   docker run -p6001:4000 -d {image_name}:{version}
   docker run -d -p6002:4000 --name angular-older {image_name}:{version}
   
8. How to get the terminal of a running container ?

   docker exec -it {docker_id} /bin/bash


   
   
