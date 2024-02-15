pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                // Docker image build karein
                sh 'docker build -t my-image .'
            }
        }
        
        stage('Run Docker Container') {
            steps {
                // Docker container run karein
                sh 'docker run -itd --name ahsanarif -p 8080:80 my-image'
            }
        }
    }
}
