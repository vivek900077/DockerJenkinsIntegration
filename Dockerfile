FROM tomcat:8.0-alpine

MAINTAINER Hari harichowdary.java@gmail.com

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

COPY **/*.war /usr/local/tomcat/webapps/app.war

EXPOSE 8081
CMD ["catalina.sh", "run"]