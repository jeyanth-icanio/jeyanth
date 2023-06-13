pipeline {
    agent any
    stages {
        stage('Build') {
            agent {docker 'node:18.16.0'}
            steps {
                sh 'ls'
                sh 'npm install'
            }
        }
        stage('run') {
            agent {arg '-d -p 8000:8000'}
            steps {
            sh 'npm start'
            }
        }
        //stage('Test') {
          //  steps {
            //    sh './Jenkins/scripts/test.sh'
            //}
       // }
        //stage('Deliver') {
          //  steps {
            //    sh './Jenkins/script/deliver.sh'
              //  input message: 'Finished using the web site? (Click "Proceed" to continue)'
                //sh './Jenkins/script/kill.sh'
            //}
        //}
    }
}
