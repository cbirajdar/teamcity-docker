FROM java:8

MAINTAINER Chetan Birajdar

#Download and extract teamcity binaries
RUN curl https://download-cf.jetbrains.com/teamcity/TeamCity-9.1.7.tar.gz | tar -xz

EXPOSE 9090
EXPOSE 9091
EXPOSE 9092

COPY buildAgent.properties /TeamCity/buildAgent/conf/buildAgent.properties

CMD sh /TeamCity/buildAgent/bin/agent.sh run
