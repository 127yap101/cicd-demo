pipeline {
    agent any

    stages {
        stage('Debug Environment') {
            steps {
                echo 'Checking Python version and PATH...'
                bat 'python --version'
                bat 'where python'

                echo 'Checking Docker version...'
                bat 'docker --version'
            }
        }

        stage('Clone Repository') {
            steps {
                echo 'Cloning the repository...'
                checkout scm
            }
        }

        stage('Build Python Environment') {
            steps {
                echo 'Setting up Python environment...'
                bat 'python --version'
                bat 'python -m pip install --upgrade pip'
                bat 'python -m pip install pytest'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests with pytest...'
                bat 'python -m pytest test_app.py'
            }
        }

        stage('Docker Build & Run') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t python-app:latest .'

                echo 'Running Docker container...'
                bat 'docker run --rm python-app:latest'
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
