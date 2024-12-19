Jenkins Assignment:

#### Instructions:

-Create A Jenkinspipeline for any sample application you like.

Add the following stages to the pipeline.

-Checkout Stage: To Configure the pipeline to checkout code from a Git repository.Ensure the repository contains a simple Java application with a `pom.xml` file for Maven.

-Build Stage: Configure the pipeline to build the Java application using Maven.

-Test Stage: Configure the pipeline to run unit tests using Maven.Ensure the pipeline fails if any tests do not pass.

-Deploy Stage:Configure the pipeline to build a Docker image for the Java application.Push the Docker image to a Docker registry (e.g., Docker Hub).

-Notifications: Configure Jenkins to send email notifications for build status (success or failure).
