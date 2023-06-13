pipeline {
    //agent any
    agent {
        docker {
            //mkdir /var/lib/jenkins
            image 'node:18.16.0'
            args '-t -d -p 3000:3000 -v /var/lib/jenkins/workspace/demo2:/var/lib/jenkins/workspace/demo2:rw,z'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'ls'
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
