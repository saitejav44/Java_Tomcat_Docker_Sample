FROM tomcat:latest

ADD **/**/webapp.war /usr/local/tomcat/webapps/

RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/

EXPOSE 80

CMD ["catalina.sh", "run"]
