pipeline {
        agent { label 'master' }
    
    stages {
        stage('Compile') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('Test') { 
            steps {
                sh 'mvn test' 
            }
        }
        stage('Run') {
            steps {
                sh 'mvn exec:java'
            }
        }
        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
    }
}

