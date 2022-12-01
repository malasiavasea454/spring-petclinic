pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  stages {
    stage('Build') {
      steps {
        sh '.mvn sonar:sonar -Dsonar.login=sqa_2c662513216ad777d27d41fbbfdf4b8b2d908de0'
        sh 'tree'
      }
    }
   stages {
    stage('Build Docker') {
      steps {
        sh 'docker build . -t "pet-clinic"'
        sh 'docker images'
      }
    }
  }
}
