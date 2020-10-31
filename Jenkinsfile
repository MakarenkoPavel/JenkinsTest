node {
	stage 'Checkout'
		checkout scm
		bat "hostname"
		bat "ipconfig"
	stage 'Build'
		bat "\"${tool 'msbuild'}\" EmptyProject.sln /p:Configuration=Release;Platform=x64"
}