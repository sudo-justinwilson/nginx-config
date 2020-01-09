# Nginx Reverse Proxy Configuration

This repo contains the configuration for an Nginx reverse web proxy Docker container. Pushes to this repo triggers a build in [Docker Hub](https://hub.docker.com/repository/docker/justinwilson/nginx-config).

### Usage

Set the "PROXY_TARGET" environment variable to configure where the HTTP requests will go to.

The following `docker run` example shows how to set a container named "wordpress" as the proxy target:

```
docker run -d --name nginx-proxy --rm --env "PROXY_TARGET=wordpress" --link wordpress -p 80:80 justinwilson/nginx-config
```

## Built With

* [Docker](https://www.docker.com/) - Docker containers
* [Nginx](http://nginx.org/) - nginx proxy HTTP server

## Contributing

Any bugs or issues should be submitted to the [github repo](https://github.com/sudo-justinwilson/nginx-config/).
