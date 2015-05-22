# Keboola Docker Demo

This is a working example of a Docker wrapped application in KBC. Description of the functionality and the application itself is in [Docker Demo App](https://github.com/keboola/docker-demo-app), this is only a Docker wrapper for the app.

## Install & build

```
git clone https://github.com/keboola/docker-demo-docker.git
cd docker-demo
sudo docker build --no-cache -t keboola/docker-demo .
```

## Runing the container

```
sudo docker run \
--volume=/home/ec2-user/data:/data \
--memory=64m \
--cpu-shares=1024 \
--rm \
keboola/docker-demo:latest 
```

Note: `--volume` needs to be adjusted accordingly and has to lead to a `data` directory. For the documentation what this folder has to comply with see 
 
  - [https://github.com/keboola/docker-demo-app](https://github.com/keboola/docker-demo-app)
  - [https://github.com/keboola/docker-bundle/blob/master/ENVIRONMENT.md#data-folder](https://github.com/keboola/docker-bundle/blob/master/ENVIRONMENT.md#data-folder)
