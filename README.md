# Docker configs for TeamCity master and agent

Docker installation - https://docs.docker.com/engine/installation/

## Build
- ```git clone git@github.com:cbirajdar/teamcity-docker.git```
- ```docker build -t cbirajdar/teamcity-server server```
- ```docker build -t cbirajdar/teamcity-agent agent```

## Run

#### docker run
- To run the server
  - ```docker run -p 8111:8111 --hostname teamcity-server --name teamcity-server cbirajdar/teamcity-server```
- To run the agent
  - ```docker run --hostname teamcity-agent1 --name teamcity-agent1 -e TEAMCITY_AGENT_OWN_PORT=9090 -e TEAMCITY_SERVER_HOST=teamcity-server -e TEAMCITY_AGENT_NAME=teamcity-agent1 --link teamcity-server cbirajdar/teamcity-agent```

#### docker-compose
- ```docker-compose up -d```

## Verify
- Get the docker machine ip - ```echo $DOCKER_HOST | awk -v FS="(tcp://|:)" '{print $2}'```
- Open ```http://${docker-machine-ip}:8111/``` in your browser
- Accept license agreement, authorize agents
- Run builds
