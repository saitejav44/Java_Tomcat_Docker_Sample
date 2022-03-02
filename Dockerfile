FROM tomcat:latest

ADD ./webapp.war /usr/locat/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
