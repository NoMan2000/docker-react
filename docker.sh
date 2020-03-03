# Put a bookmark on the node_modules folder
docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app
# Open port 3000 and symlink the current working directory to the container.
docker run -p 3000:3000 -v $(pwd):/app
# Build and tag a file and use a custom bootstrap file for it.
docker build . -t michaelsoileau:react -f Dockerfile.dev
# Do not use the cache
docker build . -t michaelsoileau:react -f Dockerfile.prod --no-cache

docker-compose up
docker ps
docker attach # ID of process