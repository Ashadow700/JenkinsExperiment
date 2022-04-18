pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('deploy') {
            steps {
                sh 'chmod 751 ./deploymentScript.sh'
                sh './deploymentScript.sh'
//                 sh 'export JENKINS_NODE_COOKIE=dontKillMe && java -jar ./target/JenkinsExperiment-spring-boot.jar >> ./output.logs &'
            }
        }
    }
}
