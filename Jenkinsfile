node {
  stage('Clone GIT source'){
        git url: 'https://github.com/KosDP1987/students.git' // my GIT
  }
  stage('Mvn Package'){
        def mvnHome = tool name: 'default', type: 'maven'
        def mvnCMD = "${mvnHome}/bin/mvn"
        sh "${mvnCMD} clean package" 
  }
  stage ('Docker build')  {
        def dockerfile = 'Dockerfile'
		sh 'docker build -t image:v1 .'
        //def customImage = docker.build("testproject:${env.BUILD_ID}", "-f ${dockerfile} ./dockerfiles") 
  }
  stage ('RUN Container')  {
        
	    sh 'docker run -ti -d -p 8888:8080 image:v1 java -jar rd-1.0.${BUILD_NUMBER}-release.jar'
  }
   stage ('upload to nexus')  {
        nexusArtifactUploader artifacts: [[artifactId: 'rd', classifier: '', file: 'target/rd-1.0.${BUILD_NUMBER}-release.jar', type: 'jar']], 
        credentialsId: 'f97200be-540a-48b1-b401-864a2b89fe65', 
        groupId: 'pingable2', 
        nexusUrl: '127.0.0.1:8081/nexus', 
        nexusVersion: 'nexus2', 
        protocol: 'http', 
        repository: 'releases', 
        version: '1.0.${BUILD_NUMBER}-release'  
	    
  }
}
