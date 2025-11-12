pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/karadHub/hello-python.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t hello-python .'
            }
        }
        stage('Run App') {
            steps {
                sh 'docker run --rm hello-python'
            }
        }
    }
}
