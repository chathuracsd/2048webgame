pipeline{

	agent {label 'linux'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/chathuracsd/2048webgame.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t chathuracsddocker/2048webapp:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push chathuracsddocker/2048webapp:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
