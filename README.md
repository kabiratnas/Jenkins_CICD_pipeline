# MyApplicationRepo
# MyWebApp

## Overview

**MyWebApp** is a Java EE-based web application structured using Maven and deployed using a Jenkins CI/CD pipeline. It follows a traditional layout with JSP pages, `web.xml` configuration, and WAR packaging.

## Project Structure

```
MyWebApp/
├── src/
│   └── main/
│       └── webapp/
│           ├── index.jsp
│           └── WEB-INF/
│               └── web.xml
├── pom.xml
├── Jenkinsfile
└── README.md
```

## Features

- Maven-based Java web application
- Jenkins CI/CD pipeline
- SonarQube for static code analysis
- JaCoCo for code coverage
- Deployment to Tomcat server on AWS EC2 instance

## Prerequisites

- Java 11 or above
- Maven 3.x
- Jenkins with the following plugins:
  - Maven Integration
  - Pipeline
  - SonarQube Scanner
  - JaCoCo
  - Deploy to container
- SonarQube server
- Tomcat 9.x running on EC2 or any target server
- Nexus (optional, for artifact storage)

## CI/CD Pipeline (Jenkinsfile)

### Stages

1. **Build**
   - Uses Maven to clean and install the application.
2. **Code Quality**
   - Performs static analysis using SonarQube.
3. **JaCoCo**
   - Generates code coverage reports.
4. **(Optional) Nexus Upload**
   - Uploads the built WAR file to a Nexus repository.
5. **DEV Tomcat Deploy**
   - Deploys the WAR file to a remote Tomcat server on AWS EC2.
6. **(Optional) Slack Notification**
   - Sends success/failure notifications.
7. **(Optional) QA Approval & Deploy**
   - Waits for manual approval before proceeding to production.

### Example Build Trigger
- Can be triggered manually or via SCM commit.

## Deployment

The application is deployed automatically to a remote Tomcat instance:

```bash
URL: http://ec2-34-229-179-78.compute-1.amazonaws.com:8080/
```

### WAR Path

The WAR is generated at:
```bash
MyWebApp/target/MyWebApp.war
```

## Clean-up

After every pipeline run, Jenkins performs a `cleanWs()` to avoid workspace pollution.

## Notes

- Ensure Jenkins has access to the required credentials and SonarQube environment.
- Nexus upload and Slack stages are commented and can be enabled when ready.

## Author

Kabirat Nasiru  
GitHub: [kabiratnas](https://github.com/kabiratnas)
