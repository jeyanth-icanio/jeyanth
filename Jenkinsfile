pipeline {
    agent any 
          stages{   
            stage('list') {
               steps {
                   sh "ls"
                // Checkout source code from a version control system (e.g., Git)
             //      git url: "https://github.com/jeyanth-icanio/jeyanth.git"
               //    sh "ls" 
            }
        }  
            stage('build'){
                steps{
                    echo "building....."
                   sh 'docker build . -t monkey_web:18.16.0'
                } 
            }
            stage('images'){
                 steps{
                    echo "IMAGE SHOWN"
                    sh "docker images"
                }
            }  
            stage("run"){
                steps{
                    echo "RUNNING" 
                    //sh 'docker stop monkey_web:18.16.0"
                    //sh 'docker rm monkey_web:18.16.0"
                    //sh "fuser -k 4000/tcp"
                    sh 'sudo ./Jenkins/script/kill.sh'
                    sh 'docker run -d -p 3000:3000 monkey_web:18.16.0'
                    
                }
            }
        }
}
