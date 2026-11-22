pipeline {
    agent any

    tools {
        jdk 'JDK17'
        maven 'Maven3'
    }

    triggers {
        githubPush()
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/ssvkotamraju/HMS.git'
            }
        }

        stage('Compile') {
            steps {
                bat 'mvn clean compile'
            }
        }

        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }

        stage('Package') {
            steps {
                bat 'mvn package'
            }
        }

        stage('Archive WAR') {
            steps {
                archiveArtifacts artifacts: 'target/*.war',
                    fingerprint: true
            }
        }
    }

    post {
        success {
            echo 'HMS build successful'
        }

        failure {
            echo 'HMS build failed'
        }
    }
} 
