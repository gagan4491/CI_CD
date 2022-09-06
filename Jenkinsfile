pipeline {
    agent any
    stages {

       stage('cloning from git') {
            steps {
            git branch: 'master', url: 'https://github.com/gagan4491/springboot-helloworld-war.git'

                //
            }
    }
    stage('Compile') {
            steps {
                sh 'mvn compile'
                echo "VersionNumber projectStartDate: 'yyyy-MM-dd', versionNumberString: 'BUILDS_ALL_TIME', versionPrefix: '', worstResultForIncrement: 'SUCCESS'"
            }
        }
        /*stage('Test') {
            steps {
                sh 'mvn test'
                script {

                    TAG = VersionNumber(versionNumberString: '${BUILD_DATE_FORMATTED, "yyyyMMdd"}-develop-${BUILDS_TODAY}')
                    echo "${TAG}"

                    image_version = readMavenPom().getVersion()
                    echo "${image_version}"
                }

            }
        }*/
        // stage('Run') {
        //     steps {
        //         sh 'mvn exec:java'
        //     }
        // }
        stage('Package') {
            steps {
                sh 'mvn package -Dmaven.test.skip=true'
                sh 'pwd'
                // dir('target'){
                //     sh 'ls -a'
                //     sh 'java -jar helloworld-0.0.1-SNAPSHOT.jar'
                // }
            }
        }
}
//  post {
//     always {
//       echo "cleaning Workspace!"
//       sh 'cp /var/lib/jenkins/workspace/test2_dev/target/helloworld-0.0.1-SNAPSHOT.jar /home/ubuntu/jar'
//     //   cleanWs()
//     }
//   }
}
