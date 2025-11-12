# hello-python

A simple Python application demonstrating Docker containerization and CI/CD with Jenkins.

## Overview

This project showcases a basic Python application that is fully containerized and automated using Jenkins CI/CD pipeline on Linux & Windows.

## Project Structure

```
hello-python/
├── src/
│   └── app.py          # Main Python application
├── Dockerfile           # Docker container configuration
├── Jenkinsfile         # Jenkins CI/CD pipeline definition
└── README.md           # This file
```

## Prerequisites

- Python 3.11+
- Docker Desktop (for Windows)
- Jenkins (configured on Windows machine)

## Building and Running

### Manual Build & Run

1. **Build the Docker image:**

   ```powershell
   docker build -t hello-python .
   ```

2. **Run the container:**
   ```powershell
   docker run --rm hello-python
   ```

### Using Jenkins CI/CD Pipeline

This project includes a `Jenkinsfile` that automates the build and run process on a Windows-based Jenkins server.

**Pipeline Stages:**

1. **Checkout** - Clones the repository from GitHub
2. **Build Docker Image** - Builds the Docker image using PowerShell
3. **Run App** - Executes the containerized application

**To run the pipeline:**

1. Create a new Pipeline job in Jenkins
2. Point it to this repository: `https://github.com/karadHub/hello-python.git`
3. Jenkins will automatically detect the `Jenkinsfile` and execute the pipeline

**Note:** The pipeline is configured for Windows using PowerShell commands (`powershell` steps instead of `sh`).

## Expected Output

When the application runs, you'll see:

```
============================================================
 Welcome to jenkins-ai-optimizer Show
 by Vaibhav Karad
============================================================
```

## Technologies Used

- **Python 3.11** - Programming language
- **Docker** - Containerization
- **Jenkins** - CI/CD automation (Windows-based)
- **Linux & Windows** - Operating systems for development and CI/CD
- **GitHub** - Source code management
- **VS Code** - Development environment
