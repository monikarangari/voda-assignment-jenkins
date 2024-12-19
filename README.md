Jenkins Assignment:
-Create A Jenkinspipeline for any sample application you like.
Add the following stages to the pipeline.
-Checkout Stage: To Configure the pipeline to checkout code from a Git repository.Ensure the repository contains a simple Java application with a `pom.xml` file for Maven.
-Build Stage: Configure the pipeline to build the Java application using Maven.
-Test Stage: Configure the pipeline to run unit tests using Maven.Ensure the pipeline fails if any tests do not pass.
-Deploy Stage:Configure the pipeline to build a Docker image for the Java application.Push the Docker image to a Docker registry (e.g., Docker Hub).
-Notifications: Configure Jenkins to send email notifications for build status (success or failure).

**Solution**
We are going to Configure the pipeline to build a Docker image for the Java application using Maven on an EC2 Instance through the use of Jenkins.

Steps:
1. Setup Jenkins Server.
2. Install Java,Maven,Docker on Jenkins server.
3. Install github, maven integration, email extension,Docker etc plugins.
4. Integrate git, github,maven and Java configuration in Manage jenkins -> Tools.
5. Write the Jenkinsfile with Checkout, Build, Test, Deploy, Notification stages.
6. Write the Dockerfile to build a Docker image for the Java application.
7. Add the Dockerhub credentials in Manage Jenkins -> Credentials section.
8. Configure Global Email Settings in Jenkins (SMTP server, credentials, etc.).
9. Create a new pipeline job and mention the repository URL nd run the job.
