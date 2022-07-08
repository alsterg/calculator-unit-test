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
                sh "pylint calculator.py | txt2html --title 'Static code analysis results' --preformat_trigger_lines 0 | tee results.html || true"
		publishHTML (target: [
			reportDir: '.',
			reportFiles: 'results.html',
			reportName: 'static analysis report'
		])
            }
        }
        stage('Building container') {
            steps {
                sh "docker build -t calculator:latest ."  // TODO: version control
            }
        }
        stage('Pushing container') {
            steps {
                sh "docker push 172.18.0.1:5000/calculator:latest"  // TODO: resolve host ip
            }
        }
    }
}

