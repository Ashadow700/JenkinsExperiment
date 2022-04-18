pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'echo "this is my Jenkinsfile!!=)"'
                sh 'mvn clean install'
            }
        }
        stage('this is my second stage') {
            steps {
                sh 'export JENKINS_NODE_COOKIE=dontKillMe'
                sh 'chmod 751 ./deploymentScript.sh'
                sh './deploymentScript.sh'
                sh 'echo $JENKINS_NODE_COOKIE'
                sh 'export JENKINS_NODE_COOKIE=dontKillMe && java -jar ./target/JenkinsExperiment-spring-boot.jar >> ./output.logs &'
                sh './deploymentScript.sh'
            }
        }
    }
}


//             sh ./deploymentScript.sh
//                 lsof -t -i :4242 -s TCP:LISTEN
//                 sh '''#!/bin/bash
//                     echo "Hello from bash"
//                     echo "Who I'm $SHELL"
//                     echo "pid: $pid"
//                     lsof -t -i :4242 -s TCP:LISTEN
//                     pid=$(lsof -t -i :4242 -s TCP:LISTEN)
//                     echo "pid: $pid"

//                 sh 'echo "this is the text from second step"'
//                 sh "echo \$pid"
//                 sh "pid=\$(lsof -t -i :4242 -s TCP:LISTEN)"
//                 sh "echo \$pid"
//                 sh 'kill -15 $pid'
