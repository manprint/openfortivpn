# Openfortivpn 

## Usage

### Run

- Create vpn.conf file with your configuration (no quotes):

```
host = vpn-host.it
port = 443
username = user.name
password = secret-password
trusted-cert = generated-from-first-container-run
```

- Execute the run script:

```
#!/bin/bash

CONTAINER_NAME=openfortivpn
IMAGE_NAME=adiprint/openfortivpn:latest

HOST_CONF_FILE=$(pwd)/vpn.conf

docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

docker run \
    -dit \
    --name $CONTAINER_NAME \
    --privileged \
    --network=host \
    -v $HOST_CONF_FILE:/vpn.conf \
    $IMAGE_NAME
```

- Execute the command:

```
docker logs -f CONTAINER_NAME
```

- Copy the generated truested certificate in your config file and rerun the container

### Test Automate build