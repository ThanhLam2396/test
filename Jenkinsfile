pipeline {
  agent any
  stages {

    stage('Git Pull Source') {
      steps {
       sh "chmod +x pullcode.sh"
       sh "./pullcode.sh"
      }
    }

    stage('Build image') {
      steps{
        sh "chmod +x buildimages.sh"
        sh "./buildimages.sh"
      }
    }

    stage('Push Image') {
      steps{
       sh "chmod +x pushimages.sh"
       sh "./pushimages.sh"
      }
    }

    stage('Deploy App') {
      steps {
       sh "chmod +x deploy-k8s.sh"
       sh "./deploy-k8s.sh"
      }
    }

  }

}