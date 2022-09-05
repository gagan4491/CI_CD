pipeline {
        agent any
    
    stages {
        stage('Compile') {
            steps {
                sh 'mvn compile'
                echo "VersionNumber projectStartDate: 'yyyy-MM-dd', versionNumberString: 'BUILDS_ALL_TIME', versionPrefix: '', worstResultForIncrement: 'SUCCESS'"
            }
        }
        stage('Test') { 
            steps {
                sh 'mvn test'
                script {
                    
                    TAG = VersionNumber(versionNumberString: '${BUILD_DATE_FORMATTED, "yyyyMMdd"}-develop-${BUILDS_TODAY}')
                    echo "${TAG}"
            
                    image_version = readMavenPom().getVersion()
                    echo "${image_version}"
                }
                
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

