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
                sh 'docker run -d --name tomcatsamplewebappcontainer -t tomcatsamplewebappimage'
                sh 'docker exec -it tomcatsamplewebappcontainer /bin/bash/'
                sh 'cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/'
                sh 'ls -latr /usr/local/tomcat/webapps/'
            }
        }
    }
}
