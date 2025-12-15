<img width="1440" height="900" alt="Screenshot 2025-12-15 at 8 55 48 PM" src="https://github.com/user-attachments/assets/8eb0f84a-196d-410e-bd53-8600d57274a7" /># Task-4: Minikube – Basic Kubernetes Applications

##ScreenShort!


[Uploading Screenshot 2025-12-15 at 8.55.48 PM.png…]()




## Objective
Is task ka objective Minikube ka use karke basic Kubernetes applications deploy karna aur unhe services ke through access karna hai.

---

## Tools & Technologies Used
- Minikube
- Kubernetes (kubectl)
- Docker
- YAML configuration files

---

## Applications Deployed

### 1. Hello Application
- Simple application to verify Minikube setup
- Displays a basic "Hello from Minikube" message
- Deployed using Kubernetes Deployment and Service

### 2. Balanced Application
- Application deployed with multiple replicas
- Demonstrates load balancing in Kubernetes
- Uses Nginx container with 3 replicas

### 3. Nginx Application
- Standard Nginx web server deployment
- Used to understand Kubernetes deployment and service exposure

---

##code
Deploy Applications
kubectl apply -f hello-app/
kubectl apply -f balanced-app/
kubectl apply -f nginx-app/

Verify Pods and Services
kubectl get pods
kubectl get services

Access Applications
minikube service hello-service
minikube service balanced-service
minikube service nginx-service

Output

All applications were successfully deployed

Services were accessible using NodePort via Minikube

Conclusion

Minikube provides an easy way to run Kubernetes locally.
Through this task, basic Kubernetes concepts like Deployments, Services, and Replicas were successfully implemented.
