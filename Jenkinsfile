node {
    def app {
	stage('Clone repository') {
	    checkout scm
	}

	stage('Build image') {
	    app = docker.build('python-trainer')
	}

	stage('Test image') {
	    app.inside {
		sh 'tox /app'
	    }
	}
    }
}
