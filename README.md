# docker-mosquitto

This repository is highly inspired by [Eclipse Mosquitto v1.4.12 Docker Image](https://github.com/eclipse/mosquitto/tree/master/docker/1.4.12).

## Version

- OS: `alpine edge`
- mosquitto: `1.4.15-r3`


## Build the Mosquitto docker image

```
docker build -t mosquitto .
```

## Run the docker image

When running the image, the default configuration values are used.
If you would like to use your own configure files, please mount your local volume to `/mosquitto/config`.

```
docker run -it -p 8883:8883 -v <path-to-configuration-file>:/mosquitto/config/ mosquitto
```
