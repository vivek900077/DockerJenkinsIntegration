FROM tomcat:latest
LABEL maintainer "sunny"
COPY **/*.war /usr/local/tomcat/webapps
CMD ["catalina.sh" , "run"]
EXPOSE 8080
