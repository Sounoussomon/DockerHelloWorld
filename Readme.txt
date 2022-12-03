
docker build -t hello .

docker images

docker run -d -p 80:5000 <ContainerID>

-d = detached mode - background
-p = define ports [ left port is outside port, right port is inside container port]

docker ps
show process running
