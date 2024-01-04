pipeline {
    agent any
    tools{
        maven 'MavenTool'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Sundarraj9942/cloudx5.git']]])
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t Sundarraj9942/cloudx5 .'
                }
            } 
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                   sh 'docker login -u rajsundar1106@gmail.com -p ${Sundar@99}}'
                    }
                   sh 'docker push Sundarraj9942/cloudx5'
                }
            }
        }
}