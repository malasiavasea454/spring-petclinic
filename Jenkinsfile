pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  stages {
    stage('Build') {
      steps {
        sh '.mvn sonar:sonar -Dsonar.login=myAuthenticationToken'
        sh 'tree'
      }
    }
  }
}
