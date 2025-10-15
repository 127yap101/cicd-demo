pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                echo 'Cloning the repository...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Setting up Python environment...'
                bat 'python --version'
                bat 'pip install pytest'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                bat 'pytest test_app.py'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Simulating deployment...'
                bat 'python app.py'
                echo 'Deployment successful ✅'
            }
        }
    }

    post {
        success {
            echo '🎉 Pipeline completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed!'
        }
    }
}
