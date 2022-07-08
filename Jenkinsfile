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
        stage('Code coverage stage') {
            steps {
                sh "coverage run CalcTest.py"
                sh "coverage html CalcTest.py"
		publishHTML (target: [
			reportDir: 'htmlcov',
			reportFiles: 'index.html',
			reportName: 'code coverage report'
		])
            }
        }
        stage('Static analysis stage') {
            steps {
                sh "pylint calculator.py > results.txt || true"
		publishHTML (target: [
			reportFiles: 'results.txt',
			reportName: 'static analysis report'
		])
            }
        }
    }
}

