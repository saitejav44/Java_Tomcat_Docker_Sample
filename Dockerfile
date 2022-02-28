FROM tomcat:latest

ADD /var/lib/jenkins/workspace/Build_Tomcat_Docker_Image/webapp/target/*.war /home/ec2-user/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
