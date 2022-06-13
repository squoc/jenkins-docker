pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                build job: 'build'
            }
        }
        stage('deploy') {
            steps {
                build job: 'deploy'
            }
        }
    }
}