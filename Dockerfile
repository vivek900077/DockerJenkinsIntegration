FROM tomcat:latest
LABEL maintainer "sunny"
COPY **/*.war /usr/local/tomcat/webapps
RUN ["catalina.sh" , "run"]
EXPOSE 8080
