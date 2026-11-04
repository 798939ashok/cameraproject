pipeline{
    agent any

    stages {
        stage('checkout code'){
            steps {
                echo 'github nundi code techukutuna...'
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Docker image build chesthuna....'
                sh 'docker build -t cameraproject .'
            }
        }
        stage('Deploy App'){
            steps {
                echo 'Old container unte teessesi, kothadhi run cheyi'
                sh 'docker rm -f camera-container || exit 0'
                sh 'docker run -d -p 8081:80 --name camera-container cameraproject:latest'
            }
        }
    }
    post {
        success {
            echo 'Build success you app http://localhost:8081'
        }
        failure {
            echo 'Build fail'
        }
    }
}