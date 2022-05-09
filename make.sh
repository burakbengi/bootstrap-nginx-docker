#bin/bash
docker kill $(docker ps -q)
docker rmi $(docker images -q) -f
docker build -t bootstrap-nginx ./
docker run -d -p 80:80 bootstrap-nginx