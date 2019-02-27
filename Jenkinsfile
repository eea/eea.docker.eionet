pipeline {
  agent any
  stages {
    stage('Build & Test') {
      steps {
        node(label: 'docker') {
          script {
            sh '''echo Hurray!!!'''
          }
        }
      }
    }
  }
}
