pipeline {
    agent any

    environment {
        DOCKER_USERNAME = credentials('docker-username')
        DOCKER_PASSWORD = credentials('docker-password') 
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    git url: 'https://github.com/martini1007/url-to-qr-devops-project.git'
                }
            }
        }

        stage('Build Backend') {
            steps {
                script {
                    docker.build("martini1007/devops-qr-code-main-backend:latest", "./api")
                }
            }
        }

        stage('Build Frontend') {
            steps {
                script {
                    docker.build("martini1007/devops-qr-code-main-frontend:latest", "./front-end-nextjs")
                }
            }
        }

        stage('Push Images') {
            steps {
                script {
                    docker.withRegistry('', 'docker-credentials') {
                        docker.image('martini1007/devops-qr-code-main-backend:latest').push()
                        docker.image('martini1007/devops-qr-code-main-frontend:latest').push()
                    }
                }
            }
        }
    }
}
