# Containers and Gifs Workshop

Files for the Workshop held at Pixel Fusion

## Workshop Cheatsheet

Step 1 - Build the image

`docker build . -t workshop`

Step 2 - Run the image (Here is where it actually becomes a container)

`docker run -t --name workshop-con -p 2000:3329 workshop`

Step 3 - Run it locally, proof of concept, works both on 2000 and 3329

`yarn start`

Step 4 - Make changes leveraging hot reloading

Step 5 - Hot reloading from inside the container

`docker exec -it workshop-con sh`

Step 6 - Run the image with volume

`docker run -t --name workshop-con -p 2000:3329 -v=$(pwd):/app workshop`

Step 7 - Run the image (simpler way)

`docker-compose up`