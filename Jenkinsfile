node {
  stage('SCM Checkout'){
    git
  }
  stage ('Clone') {
        git url: 'https://github.com/Nimble85/students.git' // Sergeia
  }
  stage('Mvn Package'){
    def mvnHome = tool name: 'default', type: 'maven'
    def mvnCMD = "${mvnHome}/bin/mvn"
    sh "${mvnCMD} clean package" 
  }

  stage ('Exec Maven') {
        rtMaven.run pom: 'pom.xml', goals: 'clean install', buildInfo: buildInfo
  }

    stage ('Publish build info') {
        server.publishBuildInfo buildInfo
}
