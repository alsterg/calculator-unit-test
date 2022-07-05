pipeline {
    agent any
    stages {
        stage('Compile stage') {
            steps {
                sh "python -m compileall calculator.py"
            }
        }
        stage('Unit testing stage') {
            steps {
                sh "python CalcTest.py"
            }
        }
    }
}

