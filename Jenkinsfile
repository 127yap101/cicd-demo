pipeline {
    agent any

    stages {
        stage('Debug Environment') {
            steps {
                echo 'Checking Python version and PATH...'
                bat 'python --version'
                bat 'where python'
            }
        }

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
                bat 'python -m pip install --upgrade pip'
                bat 'python -m pip install pytest'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                bat 'python -m pytest test_app.py'
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

