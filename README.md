# About

Container image that runs [Cisco Yang Explorer](https://github.com/CiscoDevNet/yang-explorer) on [Alpine](https://hub.docker.com/_/alpine). You can find the image on [docker hub](https://hub.docker.com/r/networklessons/docker-alpine-cisco-yang-explorer/).

# How to use

Start the container with the Docker run command below and visit the following page:

http://localhost:8088/static/YangExplorer.html

## Docker run

```
docker run -p 8088:8088 networklessons/docker-alpine-cisco-yang-explorer
```

## Docker-compose

```
version: '2'
services:
 freeradius:
  image: networklessons/docker-alpine-cisco-yang-explorer
  ports:
   - 8088:8088/tcp
```