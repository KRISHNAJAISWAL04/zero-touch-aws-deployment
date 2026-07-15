# 🚀 Zero Touch AWS Deployment Pipeline

A production-inspired DevOps project that automates infrastructure provisioning, containerization, and application deployment using Terraform, Docker, GitHub Actions, and AWS EC2.

---

## 📌 Project Overview

This project demonstrates a complete CI/CD workflow where every push to the `main` branch automatically:

- Builds a Docker image
- Pushes the image to Docker Hub
- Connects to an AWS EC2 instance using SSH
- Pulls the latest Docker image
- Replaces the running container
- Deploys the latest application automatically

No manual deployment is required after pushing the code.

---

# 🏗️ Architecture

```text
                   Developer
                       │
                  git push
                       │
                       ▼
              GitHub Repository
                       │
                       ▼
             GitHub Actions (CI/CD)
                 │             │
                 │             ▼
                 │       Docker Hub
                 │             │
                 └─────────────┘
                       │
                       ▼
                 SSH into EC2
                       │
                       ▼
               Pull Latest Image
                       │
                       ▼
             Stop Existing Container
                       │
                       ▼
             Run Updated Container
                       │
                       ▼
                FastAPI Application
```

---

# 🚀 Tech Stack

- AWS EC2
- Terraform
- Docker
- Docker Hub
- GitHub Actions
- FastAPI
- Linux
- Git
- SSH

---

# 📂 Project Structure

```
zero-touch-aws-deployment
│
├── app/
│   ├── main.py
│   ├── requirements.txt
│   └── Dockerfile
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── user_data.sh
│
└── .github/
    └── workflows/
        └── docker.yml
```

---

# ⚙️ Features

✅ Infrastructure as Code using Terraform

✅ Dockerized FastAPI Application

✅ Automatic Docker Image Build

✅ Docker Hub Integration

✅ GitHub Actions CI/CD Pipeline

✅ Automatic Deployment to AWS EC2

✅ Zero Manual Deployment

---

# 🔄 CI/CD Workflow

Whenever code is pushed to the `main` branch:

```
Git Push
    │
    ▼
GitHub Actions Triggered
    │
    ▼
Checkout Repository
    │
    ▼
Build Docker Image
    │
    ▼
Push Docker Hub
    │
    ▼
SSH into EC2
    │
    ▼
Pull Latest Image
    │
    ▼
Stop Existing Container
    │
    ▼
Run New Container
    │
    ▼
Application Updated
```

---

# 🌐 API Endpoints

| Method | Endpoint | Description |
|---------|----------|-------------|
| GET | / | Home Page |
| GET | /health | Health Check |
| GET | /info | Application Information |
| GET | /environment | Environment Details |
| GET | /docs | Swagger UI |

---

# 🐳 Docker

Build Image

```bash
docker build -t zero-touch-deployment .
```

Run Container

```bash
docker run -d -p 8000:8000 zero-touch-deployment
```

---

# ☁️ Terraform

Initialize

```bash
terraform init
```

Plan

```bash
terraform plan
```

Apply

```bash
terraform apply
```

Destroy

```bash
terraform destroy
```

---

# 🔐 GitHub Secrets

The following secrets are required:

```
DOCKER_USERNAME
DOCKER_PASSWORD
PUBLIC_IP
SSH_USERNAME
EC2_SSH_KEY
```

---

# 🎯 Learning Outcomes

- Infrastructure as Code
- AWS EC2 Provisioning
- Docker Containerization
- Docker Hub
- GitHub Actions
- CI/CD Pipeline
- SSH-based Deployment
- Linux Server Management

---

# 🚀 Future Improvements

- Jenkins Pipeline
- Kubernetes Deployment
- Helm Charts
- Ansible Configuration Management
- Nginx Reverse Proxy
- Monitoring using Prometheus & Grafana
- Security Scanning using Trivy
- Multi-stage Docker Build
- Blue-Green Deployment

---

# 👨‍💻 Author

**Krishna Jaiswal**

GitHub: https://github.com/KRISHNAJAISWAL04

LinkedIn: https://www.linkedin.com/in/krishna-jaiswal-b75411336

---

## ⭐ If you found this project useful, consider giving it a star.