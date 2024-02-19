# openerp-docker
Docker container for running openerp client v6 

## Running 

1. Download the compressed image in the Releases section and install it

    ```  
    docker load -i openerp-docker.tar.gz
    ```
  
2. Allow docker to access the running X server on host

    ```  
    xhost +local:docker
    ```  

3. Run it with the provided [compose file](compose.yml) (edit as required)

    ```  
    docker compose up -d
    ```  


    or with docker run 

    ```  
    docker run --net=host -e DISPLAY=$DISPLAY -v=/folder/to/use/as/home/:/home/user:rw --user=1000:1000  -it openerp-docker:latest 
    ```  

## Building 

Clone the repo, cd into and build it with:

    docker build -t openerp-docker . 

