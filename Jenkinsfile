pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'echo "this is my Jenkinsfile!!=)"'
                sh 'mvn --version'
                sh 'echo "some text"'
            }
        }
        stage('this is my second stage') {
            steps {
                sh 'echo "this is the text from second step"'
                echo 'yet another step and stuff'
                sh 'mvn clean install'
                sh 'pid=$(lsof -t -i :4242 -s TCP:LISTEN)'
                sh 'echo $pid'
                sh 'kill -15 $pid'
            }
        }
    }
}
