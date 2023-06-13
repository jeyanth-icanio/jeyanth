pipeline {
    agent any 
          stages{   
            stage("build"){
                steps{
                   sh "docker build . -t monkey_web:18.16.0"
                } 
            }
            stage("images"){
                 steps{
                    echo "buildind...."
                    sh "docker images"
                }
            }  
            stage("run"){
                steps{
                    sh "docker run -d -p 3000:3000 monkey_web"
                    
                }
            }
        }
}
