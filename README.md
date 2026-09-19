# AWS Jenkins Docker CI/CD

## Overview

This project demonstrates a simple CI/CD pipeline using GitHub, Jenkins, Docker, Amazon ECR and AWS EC2.

The pipeline automatically retrieves application code from GitHub, builds a Docker image, and deploys the application as a Docker container.

## Architecture

```text
Developer
    |
    v
  GitHub
    |
    v
 Jenkins
    |
    +---- Build
    |
    +---- Docker Image
    |
    v
 Amazon ECR
    |
    v
    EC2
    |
    v
Docker Container
    |
    v
   Nginx
```

## Technologies Used

* GitHub
* Jenkins
* Docker
* Amazon ECR
* Amazon EC2
* AWS CLI
* Linux
* Shell Script

## Project Structure

```text
aws-jenkins-docker-cicd/
│
├── README.md
├── Dockerfile
├── index.html
└── deploy.sh
```

## Application

The project uses a simple Nginx web application.

The Dockerfile creates an Nginx image and copies the `index.html` file into the default Nginx web directory.

## CI/CD Workflow

1. Developer pushes code to GitHub.
2. Jenkins retrieves the latest code.
3. Jenkins builds the Docker image.
4. Jenkins tags the Docker image.
5. Jenkins pushes the image to Amazon ECR.
6. EC2 pulls the latest image from ECR.
7. The existing container is stopped and replaced.
8. The new application version becomes available.

## Deployment

The deployment script can also be executed manually:

```bash
chmod +x deploy.sh
./deploy.sh
```

## Key Concepts Demonstrated

* Continuous Integration
* Continuous Deployment
* Jenkins Pipeline
* Docker image creation
* Amazon ECR
* EC2 container deployment
* GitHub source control
* Linux shell scripting

## Future Improvements

* Add automated testing
* Add SonarQube code quality scanning
* Add Trivy container vulnerability scanning
* Add deployment approval
* Add rollback mechanism
* Add webhook-based GitHub → Jenkins triggering
* Deploy the container to Amazon ECS or EKS
