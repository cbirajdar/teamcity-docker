#!/bin/bash

sed -e "s/TEAMCITY_SERVER_HOST/${TEAMCITY_SERVER_HOST}/" \
-e "s/TEAMCITY_AGENT_NAME/${TEAMCITY_AGENT_NAME}/" \
-e "s/TEAMCITY_AGENT_OWN_PORT/${TEAMCITY_AGENT_OWN_PORT}/" \
buildAgent.properties >> /TeamCity/buildAgent/conf/buildAgent.properties

sh /TeamCity/buildAgent/bin/agent.sh run

