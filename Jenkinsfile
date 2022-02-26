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
                sh 'chowm -R ec2-user:ec2-user /var/lib/jenkins/workspace/Build_Tomcat_Docker_Image/*'
                sh 'ls -latr'
                sh 'docker build . -t tomcatsamplewebapp'
            }
        }
    }
}
