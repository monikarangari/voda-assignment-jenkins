pipeline {
    agent any
    stages {
        stage('SCM Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/monikarangari/voda-assignment2-jenkins'
            }
        }

        stage('Code Compile') {
            steps {
                withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn compile'
                }
            }
        }

        stage('Execute Unit Test Framework') {
            steps {
                withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn test'
                }
            }
        }

        stage('Code Build') {
            steps {
                withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn clean -B -DskipTests package'
                }
            }
        }

        stage('Build the Docker Image') {
            steps {
                sh 'docker build -t monikarangari/mavenproject:1.0 .'
                sh 'docker images'
            }
        }

        stage('Upload Docker to Docker Registry') {
            steps {
                withDockerRegistry(credentialsId: 'DockerHubID', url: 'https://index.docker.io/v1/') {
                    sh 'docker push monikarangari/mavenproject:1.0'
                }
                
            }
        }
    }

    post {
        always {
            emailext(
                to: 'monikarangari15@gmail.com',
                subject: "$JOB_NAME - Build # $BUILD_NUMBER - ${env.BUILD_STATUS}!",
                body: """
                    <html>
                      <body>
                        <h1>Build ${env.BUILD_NUMBER} ${env.BUILD_STATUS}</h1>
                        <p>Build URL: <a href='${env.BUILD_URL}'>${env.BUILD_URL}</a></p>
                        <p>SCM Changes: <pre>${env.CHANGE_LOG}</pre></p> 
                      </body>
                    </html>
                """,
            )
        }
    }
}
