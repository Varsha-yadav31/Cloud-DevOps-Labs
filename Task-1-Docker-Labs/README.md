# Task-1: Docker Labs

## Objective
To understand Docker basics, image creation, and container deployment.

##Screenshort

<img width="1440" height="900" alt="Screenshot 2025-12-15 at 6 55 52 PM" src="https://github.com/user-attachments/assets/cc2e41d2-4c29-42e0-8a6f-dafaf2014cdb" />



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


