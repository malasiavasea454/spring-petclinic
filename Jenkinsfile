pipeline {
  agent {
    label 'slave'
  }
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  stages {
    stage('Build') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'sonar-cloud', passwordVariable: 'SONAR_TOKEN', usernameVariable: '')]) {
          sh """
            mvn clean test sonar:sonar \
              -Dsonar.login=$SONAR_TOKEN \
              -Dsonar.host.url=https://sonarcloud.io \
              -Dsonar.projectKey=testPetclinicKey \
              -Dsonar.organization=testorgkey1
            """
         
        }
      }
    }
     stage('Docker Build') {
      steps {
      	sh 'docker build -t pet-clinic:latest .'
      }
    }
    }
  }
