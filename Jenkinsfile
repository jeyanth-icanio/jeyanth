pipeline {
    agent any 
        stages{
            stage("images"){
                steps{
                    echo "buildind...."
                    sh "docker images"
                }
            }
            stage("build"){
                steps{
                   sh "docker build . -t monkey_web:18.16.0"
                } 
            }
        }
}
