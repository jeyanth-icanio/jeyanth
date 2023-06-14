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
                   //sh 'docker build . -t monkey_web:18.16.0'
                   sh 'npm install'
                    
                } 
            }
            stage('images'){
                 steps{
                    echo "IMAGE SHOWN"
                    //sh "docker images"
                   //  sh 'npm run build'
                     sh 'pm2 delete react'
                     sh 'pm2 start --name react npm -- start'
                     sh 'pm2 list'
                }
            }  
            stage("run"){
                steps{
                    echo "RUNNING" 
                    //sh 'docker stop monkey_web:18.16.0"
                    //sh 'docker rm monkey_web:18.16.0"
                    //sh 'set -x && fuser -k 3000/tcp'
                   // sh 'cat ./Jenkins/script/kill.sh'
                    //sh 'set -x && lsof -ti :3000 | xargs kill'
                   // sh 'docker run -d -p 3000:3000 monkey_web:18.16.0'
                 //   sh 'docker ps -qf "expose=3000" | xargs docker kill'
                    
                }
            }
        }
}
