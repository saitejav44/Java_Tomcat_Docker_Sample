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
                    archiveArtifacts artifacts: '**/*.war /home/ec2-user/tomcat/webapps'
                }
            }
        }
        stage('Create Tomcat Docker Image') {
            steps {
                sh 'pwd'
                sh 'ls -latr'
                sh 'docker build . -t tomcatsamplewebapp'
            }
        }
    }
}
