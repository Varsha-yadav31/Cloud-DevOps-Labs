# Task-1: Docker Labs

## Objective
To understand Docker basics, image creation, and container deployment.

##Screenshort

![Uploading Screenshot 2025-12-15 at 6.55.52 PM.png…]()


## Tools Used
- Docker
- Nginx
- macOS

## Files Description
- Dockerfile: Used to create Docker image
- index.html: Sample web page
- docker-commands.txt: Docker commands used

## Steps Performed
1. Created Dockerfile
2. Built Docker image using docker build
3. Ran container using docker run
4. Accessed application on browser

## Command to Run
```bash
docker build -t docker-lab-app .
docker run -d -p 8080:80 docker-lab-app

