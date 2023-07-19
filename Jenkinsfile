pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh './build.sh'
        
      }
    }
    
    stage('Deploy') {
      steps {
        sh './delpoy.sh'
        }
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}

