pipeline{
	agent any

	environment{
		dockerImage =''
		registry = 'chathuracsddocker/webapp2028'
		registryCredential = 'dockerhub'

	}

	stages{

		stage('Checkout'){
			steps{
			checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/chathuracsd/2048webgame.git']])
			}
		}

		stage('Build Docker Image'){
			steps{
				script{
					dockerImage = docker.build registry

				}
			}

		}

		stage('Push to DockerHub'){
			steps{
				script{
					docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()
					}

				}
			}


		}


	}
  

}