pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'echo "Building..."'
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Testing..."'
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying..."'
                // Add deployment steps here
            }
        }
    }
    
    post {
        success {
            slackSend channel: '#builds',
                      color: 'good',
                      message: "Build successful! :tada:"
        }
        failure {
            slackSend channel: '#builds',
                      color: 'danger',
                      message: "Build failed! :x:"
        }
    }
}
