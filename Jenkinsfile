pipeline {
    agent any
    stages {
        stage('Compile stage') {
            steps {
                sh "python3 -m compileall calculator.py"
            }
        }
        stage('Unit testing stage') {
            steps {
                sh "python3 CalcTest.py"
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
                sh "pylint calculator.py | txt2html --title 'Static code analysis results' --preformat_trigger_lines 0 | tee /tmp/results.html || true"
		publishHTML (target: [
			reportDir: '/tmp',
			reportFiles: '/tmp/results.html',
			reportName: 'static analysis report'
		])
            }
        }
    }
}

