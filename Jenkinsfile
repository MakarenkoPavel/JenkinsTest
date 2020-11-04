pipeline {
    agent {
		label 'BUILDFCTRUNKVP'
	}
	
	environment {
		MSBUILD_PATH = "C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Professional\\MSBuild\\Current\\Bin\\MSBuild.exe"
		CONFIG = 'Release'
		PLATFORM = 'x64'
	}

    stages {
        stage('Build') {
            steps {
                bat "echo 'Building..'"             
				bat "\"${MSBUILD_PATH}\" EmptyProject.sln /p:Configuration=Release;Platform=x64"
            }
        }
        stage('Test') {
            steps {
                bat "echo 'Testing..'"
            }
        }
        stage('Deploy') {
            steps {
                bat "echo 'Deploying....'"
            }
        }
    }

    post {
        success {
            bat "echo 'Pipeline Succeeded'"
        }
        failure {
            bat "echo 'Pipeline Failed'"
        }
        unstable {
            bat "echo 'Pipeline run marked unstable'"
        }       
    }
}