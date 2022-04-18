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
//                 sh 'export JENKINS_NODE_COOKIE=dontKillMe'
//                 sh 'chmod 751 ./deploymentScript.sh'
//                 sh './deploymentScript.sh'
//                 sh 'echo $JENKINS_NODE_COOKIE'
                sh 'export JENKINS_NODE_COOKIE=dontKillMe && java -jar ./target/JenkinsExperiment-spring-boot.jar >> ./output.logs &'
//                 sh './deploymentScript.sh'
            }
        }
    }
}
