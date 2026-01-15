# Migros One DevOps Case Study - 2048 Game 

This project demonstrates deploying the classic 2048 game using Docker and Kubernetes (KIND + Ingress).

Docker Image: 

Base on gabrielecirulli/2048(https://github.com/gabrielecirulli/2048) 

Base on alpine 

Base on nginx 


## Directory Structure
```text
case-study-2048-game/
 ├── kind-config.yaml
 ├── game/
 │    ├── Dockerfile
 │    ├── index.html
 │    └── ... 
 └── k8s/
      ├── namespace.yaml
      ├── deployment.yaml
      ├── service.yaml
      └── ingress.yaml
```


## Requirements

You need the following software to run this project:

- Docker
- kubectl
- KIND
- Nginx Ingress Controller

## Setup

### 1- Clone the repo

```bash
git clone https://github.com/seymausta/case-study-2048-game.git
cd case-study-2048-game
```

### 2- Build the Docker image

The Dockerfile is located at:
game/Dockerfile

```bash
docker build -t seymausta1/2048-game:latest ./game
```
### 3 — Create a KIND cluster (Ingress-ready)

This project includes a preconfigured KIND cluster configuration file
(`kind-config.yaml`) to enable Ingress and direct access via port 80/443.

Create the cluster using:

```bash
kind create cluster --name 2048-game --config kind-config.yaml
```

### 3- Create a KIND cluster

```bash
kind create cluster --name 2048-game
```

### 4- Install Nginx Ingress Controller

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
```

Wait until the controller is running:
```bash
kubectl get pods -n ingress-nginx
```


### 5- Load the Docker image to KIND

```bash
kind load docker-image seymausta1/2048-game:latest --name 2048-game
```

### 6- Apply Kubernetes manifests

Manifests are under:
k8s/

```bash
kubectl apply -f k8s/namespace.yaml
kubectl apply -f k8s/
```

### 7- Add hosts entry for domain resolution

```bash
echo "127.0.0.1 2048.local" | sudo tee -a /etc/hosts
```

### 8- Access in browser

http://2048.local


**The following step is optional. It is for pod, service, and ingress control. 
In addition, If you wish, you can also perform the cleanup.**

## Test

### 1- Pod and Service Control

```bash
kubectl get pods -n game
kubectl get svc -n game
```

### 2- Ingress Control

```bash
kubectl get ingress -n game
```

Using a browser:
Open the address http://2048.local

Using the terminal:
```bash
curl -I http://2048.local
```

## Cleanup

```bash
kind delete cluster --name 2048-game
docker image rm seymausta1/2048-game:latest
```

If you have any further questions after completing all these steps, please feel free to contact me.

Şeymanur Usta
seymanur.usta.123@gmail.com



