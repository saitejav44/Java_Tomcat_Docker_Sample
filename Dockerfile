FROM tomcat:latest

COPY ./webapp.war /usr/locat/tomcat/webapps/

RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
