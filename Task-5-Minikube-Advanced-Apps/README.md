Task-5-Minikube-Advanced-Apps

This repository contains advanced Kubernetes application deployments using Minikube on a local Windows environment. The project demonstrates how to deploy, expose, scale, and manage containerized applications using different Kubernetes service types and configurations.

📌 Project Objective

The main objective of this project is to understand and implement:

Local Kubernetes cluster setup using Minikube

Deployment of containerized applications

Service exposure using NodePort and LoadBalancer

Application scalability and auto-scaling

Multi-container pod deployment using YAML

This project is created for learning and academic purposes as part of Cloud & Microservices coursework.

🛠️ Tools & Technologies Used

Kubernetes

Minikube

kubectl (Kubernetes CLI)

Docker Desktop

YAML

NGINX

Node.js


1️⃣ NodePort Service Deployment

Created a Kubernetes deployment using an echo-server image

Exposed the application using NodePort service

Accessed the service using Minikube

2️⃣ LoadBalancer Service Deployment

Deployed an application with LoadBalancer service type

Used minikube tunnel to simulate cloud LoadBalancer

3️⃣ NGINX Deployment

Deployed an NGINX web server

Exposed it using NodePort

Verified access via browser

4️⃣ Scalability & Auto-Scaling (HPA)

Enabled Metrics Server

Configured Horizontal Pod Autoscaler (HPA)

Demonstrated automatic scaling based on CPU utilization

5️⃣ Custom Node.js Application

Deployed a custom Node.js application

Exposed it using LoadBalancer service

Scaled the application replicas

6️⃣ Multi-Container Pod (YAML)

Created a deployment using YAML

Ran multiple containers (NGINX, Redis, BusyBox) in a single pod

Verified multi-container pod readiness

▶️ How to Run the Project

Start Docker Desktop

Start Minikube:

minikube start --driver=docker

Apply deployments:

kubectl apply -f multi-container-deploy.yaml

Check running resources:

kubectl get pods
kubectl get services

Access services using:

minikube service <service-name>
🧹 Cleanup

To clean the cluster:

kubectl delete all --all
minikube delete
📚 Learning Outcomes

Hands-on experience with Kubernetes deployments

Understanding of Kubernetes services and networking

Practical knowledge of scaling and auto-scaling applications

Experience working with YAML-based Kubernetes configurations

🏫 Academic Details

Course: INT363 – Cloud & Microservices

University: Lovely Professional University

Task: Task-5 – Minikube Advanced Applications

⚠️ Disclaimer

This project is created for educational purposes only. It is intended for learning and demonstration, not for production use.

⭐ If you find this project useful, feel free to explore, fork, or star the repository.
