pipeline {
    agent {
        docker {
            image 'node:18.16.0'
            args '-p 3000:3000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh './Jenkins/scripts/test.sh'
            }
        }
        stage('Deliver') {
            steps {
                sh './Jenkins/script/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './Jenkins/script/kill.sh'
            }
        }
    }
}
