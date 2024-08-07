# Instructions

## Instructions to Build and Push Docker Image
<br>
<br>
## Build the Docker Image
docker build -t your-username/flask-app:latest .
<br>
<br>

## Push the Docker Image to a Container Registry 
docker login docker push your-username/flask-app:latest
<br>
<br>
## Prerequisites for Deploying Flask Application and MongoDB on Minikube
- Minikube installed
- kubectl installed
- Docker installed
# step 1
- Start Minikube <br>
  minikube start
- Apply the Kubernetes configurations <br>
kubectl apply -f mongo-secret.yaml <br>
kubectl apply -f mongo-pv-pvc.yaml <br>
kubectl apply -f mongo-statefulset.yaml <br>
kubectl apply -f flask-deployment.yaml <br>
kubectl apply -f flask-hpa.yaml <br>
- Access the Flask application <br>
kubectl get svc flask-service
# DNS Resolution in Kubernetes
Kubernetes provides DNS resolution for inter-pod communication using CoreDNS or kube-dns. Each pod can communicate with other pods using service names (e.g., mongo-service) which resolve to the corresponding pod IP addresses. Kubernetes DNS automatically manages these resolutions, allowing seamless communication between services.
# Resource Requests and Limits in Kubernetes

  
