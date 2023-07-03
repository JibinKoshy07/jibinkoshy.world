pipeline {
    agent any
    stages {
        stage('Build Maven') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/JibinKoshy07/jibinkoshy.world']]])
                // Add any Maven build steps here if needed
            }
        }
        stage('Build Docker image') {
            steps {
                script {
                    sh 'docker build -t jibu07/jibinkoshy.world .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'DockerHub_Pwd_jibu', variable: 'DockerHub_Pwd')]) {
                   sh 'docker login -u jibu07 -p ${DockerHub_Pwd}'

}
                   sh 'docker push jibu07/jibinkoshy.world'
                }
            }
        }        
    }
}
