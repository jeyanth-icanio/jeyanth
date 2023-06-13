pipeline {
    agent any 
          stages{   
            stage("Checkout") {
               steps {
                // Checkout source code from a version control system (e.g., Git)
                   git url: "https://github.com/jeyanth-icanio/jeyanth.git"
            }
        }  
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
                    sh "docker run -d -p 3000:3000 monkey_web:18.16.0"
                    
                }
            }
        }
}
