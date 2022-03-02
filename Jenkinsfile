pipeline {
    agent any
    stages {
        stage('Build Application'){
            steps {
                sh 'mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo "Now archiving the Artifacts"
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        stage('Create Tomcat Docker Image') {
            steps {
                sh 'pwd'
                sh 'ls -latr'
                sh 'docker pull tomcat:latest'
                sh 'docker run -d --name tomcatsamplewebappcontainer -t tomcat:latest'
                sh 'sudo docker exec -it tomcatsamplewebappcontainer /bin/bash/'
                sh 'sudo cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/'
                sh 'ls -latr /usr/local/tomcat/webapps/'
            }
        }
    }
}
