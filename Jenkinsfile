pipeline {
    agent any
    
    stages {
        stage('Build and Run C') {
            when {
                expression { fileExists('Makefile') }
            }
            steps {
                sh 'docker run --rm -v $(pwd):/app -w /app whanos-c make'
            }
        }
        
        stage('Build and Run Java') {
            when {
                expression { fileExists('pom.xml') }
            }
            steps {
                sh 'docker run --rm -v $(pwd):/app -w /app whanos-java mvn package'
                sh 'docker run --rm -v $(pwd):/app -w /app whanos-java java -jar target/app.jar'
            }
        }
        
        stage('Build and Run JavaScript') {
            when {
                expression { fileExists('package.json') }
            }
            steps {
                sh 'docker run --rm -v $(pwd):/app -w /app whanos-javascript node .'
            }
        }
        
        stage('Build and Run Python') {
            when {
                expression { fileExists('requirements.txt') }
            }
            steps {
                sh 'docker run --rm -v $(pwd):/app -w /app whanos-python python -m app'
            }
        }
        
        stage('Build and Run Befunge') {
            when {
                expression { fileExists('app/main.bf') }
            }
            steps {
                // Add your specific Befunge build and execution commands here
                // For example:
                sh 'docker run --rm -v $(pwd)/app:/app -w /app whanos-befunge befunge-interpreter main.bf'
            }
        }
    }
}
