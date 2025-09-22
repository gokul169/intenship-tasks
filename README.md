# Task-01 CI/CD Pipeline - Node.js Docker App

## Description
This project is part of my internship Task-01. It demonstrates a CI/CD pipeline by Dockerizing a Node.js application.

## Project Structure
- `Dockerfile` - Builds the Node.js app in a container
- `.dockerignore` - Prevents unnecessary files from being copied into the image
- `index.js` - Simple Node.js server
- `package.json` & `package-lock.json` - Node.js dependencies

## How to Run Locally
1. Build the Docker image:
   ```bash
   docker build -t gokul169/task-01-cicd .
docker run -p 3000:3000 gokul169/task-01-cicd
