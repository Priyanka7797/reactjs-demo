pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'build.sh'
        
      }
    }
    stage('Test') {
      steps {
        sh 'docker run my-react-app'
      }
    }
    stage('Deploy') {
      steps {
        sh 'delpoy.sh'
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

