FROM tomcat:latest

#ADD ./webapp/target/webapp.war /home/ec2-user/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
