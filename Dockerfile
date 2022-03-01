FROM tomcat:latest

WORKDIR /home/ec2-user/tomcat/webapps/

ADD webapp.war /home/ec2-user/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
