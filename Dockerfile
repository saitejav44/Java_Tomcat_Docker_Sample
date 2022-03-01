FROM tomcat:latest

ADD ./webapp/target/webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
