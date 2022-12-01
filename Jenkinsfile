pipeline {
  agent {
    labels 'slave'
  }
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn sonar:sonar -Dsonar.login=a710316cf3af5e6b2a64c20617c7d782f6b2744f'
        sh 'tree'
      }
    }
   stages {
    stage('Build Docker') {
      steps {
        sh 'docker build -t "pet-clinic:${BUILD_NUMBER}" .'
        sh 'docker images'
      }
    }
  }
}
