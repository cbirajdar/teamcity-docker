FROM openjdk:8

MAINTAINER Chetan Birajdar

#Download and extract teamcity binaries
RUN curl https://download-cf.jetbrains.com/teamcity/TeamCity-10.0.4.tar.gz | tar -xz

#Expose port for teamcity server
EXPOSE 8111

CMD sh /TeamCity/bin/teamcity-server.sh run
