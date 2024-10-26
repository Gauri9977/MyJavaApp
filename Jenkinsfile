pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "gauriphatate00/myjavaapp:latest"
        DOCKER_CREDENTIALS_ID = "docker-hub-credentials"
    }
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/Gauri9977/MyJavaApp.git', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(DOCKER_IMAGE)
                }
            }
        }
        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('', DOCKER_CREDENTIALS_ID) {
                        docker.image(DOCKER_IMAGE).push()
                    }
                }
            }
        }
    }
}
