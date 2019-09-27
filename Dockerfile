FROM 9.0.24-jdk8-openjdk-slim

MAINTAINER Hari harichowdary.java@gmail.com

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

COPY **/*.war /usr/local/tomcat/webapps/app.war

EXPOSE 8081
