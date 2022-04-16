pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'echo "this is my Jenkinsfile!!=)"'
            }
        }
        stage('this is my second stage') {
            steps {
                sh 'mvn clean install'
                sh 'chmod 751 ./deploymentScript.sh'
                sh './deploymentScript.sh'
                sh 'java -jar ./target/JenkinsExperiment-spring-boot.jar'
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
