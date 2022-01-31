set -e

## Build and run container with image and execute script
docker build . -t image_generator 
docker run --name images -dit image_generator 
docker exec images node index.js

## Copy generated pdf out of container
docker cp images:/src/generated.pdf generated.pdf

## Kill remove container
ID=$(docker ps -a | grep image_generator | awk '{ print $1 }')
docker kill ${ID}
docker rm ${ID}