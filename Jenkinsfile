pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('run') {
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
