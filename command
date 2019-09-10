
*) Show us our running containers on our systems
=============================================
docker container ls
docker container ls -a 

*) docker container ps

*)Get nginx
==========
docker pull nginx

*) docker images

*) docker container run -d -p 8080:80 --name mynginux nginx

sudo apt-get update
sudo apt-get install docker.io
sudo apt autoremove
docker images
docker run -it -d ubuntu
sudo docker pull ubuntu

-it terminal interactive
-d run the container as a daemon and run the container in the background
docker ps
docker ps -a
sudo docker exec -it <containerid> bash
sudo docker stop <containerid>
sudo docker kill <containerid>
sudo docker rm <containerid>
sudo docker images
sudo docker rmi <image-id>
