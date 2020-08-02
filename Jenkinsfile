pipeline {
  agent any
  stages {
<<<<<<< HEAD

    stage('Git Pull Source') {
=======
    stage('Checkout Source') {
>>>>>>> refs/remotes/origin/master
      steps {
       sh "chmod +x pullcode.sh"
       sh "./pullcode.sh"
      }
    }

    stage('Build image') {
<<<<<<< HEAD
      steps{
        sh "chmod +x buildimages.sh"
        sh "./buildimages.sh"
=======
      steps {
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }

>>>>>>> refs/remotes/origin/master
      }
    }

    stage('Push Image') {
<<<<<<< HEAD
      steps{
       sh "chmod +x pushimages.sh"
       sh "./pushimages.sh"
=======
      steps {
        script {
          docker.withRegistry( "" ) {
            dockerImage.push()
          }
        }

>>>>>>> refs/remotes/origin/master
      }
    }

    stage('Deploy App') {
      steps {
<<<<<<< HEAD
       sh "chmod +x deploy-k8s.sh"
       sh "./deploy-k8s.sh"
=======
        script {
          kubernetesDeploy(configs: "myweb.yaml", kubeconfigId: "mykubeconfig")
        }

>>>>>>> refs/remotes/origin/master
      }
    }

  }
  environment {
    registry = 'thanhlam2396/test'
    dockerImage = ''
  }
}