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
   * Virtual file system (Container has a virtual file where the data is usually stored but here there is no persistence 
    (Data is gone! Means when restarting or removing the container))

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
   
   docker network ls
   
   docker build -t {app-name}:{version}
   
   
6. How to check running and stopped container

   docker ps -a
   
7. Binding

   docker run -p6000:4000 -d {image_name}
   docker run -p6001:4000 -d {image_name}:{version}
   docker run -d -p6002:4000 --name angular-older {image_name}:{version}
   
8. How to get the terminal of a running container ?

   docker exec -it {docker_id} /bin/bash
   
9. How to override default username and password of mongoDB
  
   docker run  -d \
   > --name mongodb \
   > -p 27017:27017 \
   > -e MONGO_INITDB_ROOT_USERNAME=admin \
   > -e MONGO_INITDB_PASSWORD=password \
   > --net mongo-network
   > mongo
      
   
   docker run -d \
   > -p 8081:8081
   > -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
   > -e ME_CONFIG_MONGODB_ADMINPASSWORD=password \
   > --net mongo-network \
   > --name mongo-express \
   > -e ME_CONFIG_MONGODB_SERVER=mongodb \
   > mongo-express

10. docker compose 

    docker compose takes care of creating a common network!

    version: '3'
    
    services: 
    
      mongodb:   //container name
      
        image: mongo
        
        ports:
        
          -27017:27017
          
        volumes:
        
          -db-data: /var/lib/mysql/data
          
        environment:
        
          - MONGO_INITDB_ROOT_USERNAME=admin
           
          - MONGO_INITDB_PASSWORD=password
          
          
     mongo-express:
     
        image: mongo-express
        
        ports:
        
          -8081:8081
          
        environment:
        
          - ME_CONFIG_MONGODB_ADMINUSERNAME=admin
          
          - ME_CONFIG_MONGODB_ADMINPASSWORD=password

    
    docker-compose basic commmands:
    
      docker-compose -f mongo.yaml up -d
      
      docker-compose -f mongo.yaml down
      
11. What is a Dockerfile ?

    Blueprint for building images
    
    Ex:
    
    FROM node:13-alpine
    
    ENV MONGO_DB_USERNAME=admin \
    
        MONGO_DB_PASSWORD=password
        
    RUN mkdir -p /home/app
    
    COPY . /home/app
    
    CMD ["node"],"/home/app/server.js"]
    
  
 12. Delete a docker image

      check container running based on image name
      
      docker ps -a | grep {image_name}
      
      docker rm {container_id}
        
      docker rmi {image_name}
      
      
 13. AWS ECR
      
      AWS cli needs to be installed 
      
      Credentials configured
      
      $(aws ecr get-login --no-include-email --region eu-central-1)
      
      docker build -t {app_name}:{tag} .
      
      docker tag {app_name}:{tag} {registryDomain/imageName:tag}
      
      docker push {registryDomain/imageName:tag}
      
      
14. Docker registries

      registryDomain/imageName:tag
      
 
15. When do we need docker volumes ?

      For data persistence
      Databases
      Other stateful Applications
      

16. What is a Docker Volume? 

    Folder in physical host file system is mounted into the virtual file system of docker
    
    Data gets automatically replicated 
    
    3 volume types
    
    1) using docker run command
    docker run -v /home/mount/data:/var/lib/mysql/data (Host volumes)
    
    2) docker run -v /var/lib/mysql/data (Anonymous volumes)
    
    3) docker run -v name:/var/lib/mysql/data (named volumes) (you can reference the volume by name)


      
  
      
      
 
 
    
    
    
    

    
 
      
 
    

          
    

   
   
