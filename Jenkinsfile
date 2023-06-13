pipeline {
    agent any
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
