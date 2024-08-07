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

  
