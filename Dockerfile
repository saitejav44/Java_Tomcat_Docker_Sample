FROM tomcat:latest

COPY **/*.war /home/ec2-user/tomcat/

EXPOSE 8080

CMD ["catalina.sh", "run"]
