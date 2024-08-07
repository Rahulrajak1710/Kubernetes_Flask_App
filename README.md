# Instructions

## Instructions to Build and Push Docker Image
<br>
<br>


## Build the Docker Image
`docker build -t your-username/flask-app:latest .`
<br>
<br>

## Push the Docker Image to a Container Registry 
`docker login docker push your-username/flask-app:latest`
<br>
<br>
## Prerequisites for Deploying Flask Application and MongoDB on Minikube
- Minikube installed
- kubectl installed
- Docker installed
# step 1
- Start Minikube <br>

  `minikube start`
- Apply the Kubernetes configurations <br>

  `kubectl apply -f mongo-secret.yaml` <br>

  `kubectl apply -f mongo-pv-pvc.yaml` <br>

  `kubectl apply -f mongo-statefulset.yaml` <br>

  `kubectl apply -f flask-deployment.yaml` <br>

  `kubectl apply -f flask-hpa.yaml` <br>

- Access the Flask application <br>

  `kubectl get svc flask-service`
<br>
# DNS Resolution in Kubernetes
Kubernetes provides DNS resolution for inter-pod communication using `CoreDNS` or `kube-dns`. Each pod can communicate with other pods using service names (e.g., `mongo-service`) which resolve to the corresponding pod IP addresses. Kubernetes DNS automatically manages these resolutions, allowing seamless communication between services.
<br>
# Resource Requests and Limits in Kubernetes
- Requests:
  The minimum amount of resources (CPU/Memory) that Kubernetes guarantees for a container. If a container requires more resources than requested, it might be throttled.
- Limits:
   The maximum amount of resources that a container can use. Exceeding these limits might result in the container being throttled or terminated.
  <br>
# Design Choices
- Flask Application: Flask was chosen for its simplicity and ease of deployment. Alternatives like Django were considered but deemed too heavyweight for this example.

- MongoDB: MongoDB was chosen for its flexibility with JSON-like documents. Alternatives like SQL databases were considered but rejected due to the application’s requirement for unstructured data storage.

- Docker: Using Docker ensures consistent environments across different stages of development. Alternatives like Podman were considered but Docker’s widespread use and tooling support made it preferable.

- Minikube: Minikube provides a local Kubernetes environment that is ideal for development and testing. Alternatives like Kind were considered but Minikube’s broader feature set and integration with various Kubernetes tools made it a better choice.
- <br>
# Testing Scenarios
- Steps for Testing Autoscaling:<br>
Apply HPA Configuration `kubectl apply -f flask-app-hpa.yaml`


  
