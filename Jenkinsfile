pipeline {
    agent {
        node {
            label 'slave-node'
        }
    }
    tools {
        jdk 'OpenJDK-21'
        maven 'Maven-3.9.6'
    }
    environment {
        APP_NAME = 'maven-web-app'
        TOMCAT_URL = 'http://localhost:8080'
        AUTHOR = 'Baswaraj Patil'
    }
    stages {
        stage('Checkout SCM') {
            steps {
                echo "Cloning source code from repository for ${env.AUTHOR}"
                git branch: 'main', url: 'https://github.com/baswarajpatil123/maven-web-app.git'
            }
        }
        stage('Unit Testing & Coverage') {
            steps {
                echo "Running JUnit test suites with Java 21"
                sh 'mvn clean test'
            }
        }
        stage('Package WAR') {
            steps {
                echo "Packaging Web Application Archive (WAR)"
                sh 'mvn package -DskipTests'
            }
        }
        stage('Deploy to Tomcat Server') {
            steps {
                echo "Deploying WAR artifact to Tomcat 9 Application Server"
                deploy adapters: [tomcat9(credentialsId: 'tomcat-manager-creds',
                                         path: '',
                                         url: "${env.TOMCAT_URL}")],
                       contextPath: "/${env.APP_NAME}",
                       war: "target/${env.APP_NAME}.war"
            }
        }
        stage('Smoke Test & Healthcheck') {
            steps {
                echo "Verifying deployment endpoint HTTP status"
                sh "curl -sI ${env.TOMCAT_URL}/${env.APP_NAME}/ | grep '200 OK'"
            }
        }
    }
    post {
        success {
            echo "CI/CD Pipeline executed successfully for ${env.AUTHOR}."
        }
        failure {
            echo "Pipeline failed. Initiating automated rollback alerts."
        }
    }
}
