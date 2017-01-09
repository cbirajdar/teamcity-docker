FROM openjdk:8

MAINTAINER Chetan Birajdar

#Download and extract teamcity binaries
RUN curl https://download-cf.jetbrains.com/teamcity/TeamCity-10.0.4.tar.gz | tar -xz

#Expose agent port to teamcity server
EXPOSE 9090

COPY buildAgent.properties .

COPY run_agent.sh .

CMD sh run_agent.sh
