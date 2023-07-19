pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'sh ./build.sh'
        
      }
    }
    
    stage('Deploy') {
      steps {
        sh 'sh ./delpoy.sh'
        }
      }
    }
  
  post {
    always {
      sh 'docker logout'
    }
  }
}

