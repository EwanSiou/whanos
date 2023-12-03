@Library('whanos-lib') _
pipeline {
    agent any 
    stages {
        stage('Hello') { 
            steps {
                helloWord()
            }
        }
        stage('Hello2') { 
            steps {
                echo 'Hello word2'
            }
        }
        stage('Hello3') { 
            steps {
                echo 'Hello word3'
            }
        }
    }
}