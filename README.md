# Docker configs for TeamCity master and agent

Docker installation - https://docs.docker.com/engine/installation/

## Build
- ```git clone git@github.com:cbirajdar/teamcity-docker.git```
- ```docker build -t cbirajdar/teamcity-server server```
- ```docker build -t cbirajdar/teamcity-agent agent```

## Run
- ```docker-compose up -d```

## Verify
- Get the docker machine ip - ```echo $DOCKER_HOST | awk -v FS="(tcp://|:)" '{print $2}'```
- Open ```http://${docker-machine-ip}:8111/``` in your browser
- Accept license agreement, authorize agents
- Run builds
