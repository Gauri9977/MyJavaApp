pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Gauri9977/MyJavaApp.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    bat 'App.java'
                }
            }
        }

        stage('Run') {
            steps {
                script {
                    bat'App'
                }
            }
        }
    }
}
