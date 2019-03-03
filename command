
Show us our running containers on our systems
=============================================
docker container ls
docker container ls -a 

Get nginx
==========
docker pull nginx


docker images

last parameter is image name 
docker container run -d -p 8080:80 --name mynginux nginx
