pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh  'chmod +x build.sh'
        sh 'sh ./build.sh'
        
      }
    }
    
    stage('Deploy') {
      steps {
        sh 'chmod +x deploy.sh'
        sh 'sh ./deploy.sh'
        }
      }
    }
  
  post {
    always {
      sh 'docker logout'
    }
  }
}

