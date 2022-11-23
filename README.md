# openerp-docker
Docker container for running openerp client v6 

## Running 

Download the compressed image in the Releases section and install it

`docker load openerp-docker.tar.gz`

Allow docker to access the running X server on host

`xhost +local:docker`

then run it with the provided compose.yml (edit as required)

`docker compose up -d`

or with docker run 

`docker run --net=host -e DISPLAY=$DISPLAY -v=/folder/to/use/as/home/:/home/user:rw --user=1000:1000  -it openerp-docker:latest 

## Building 

WIP
