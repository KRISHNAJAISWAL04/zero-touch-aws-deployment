#!/bin/bash
set -e

# Update packages
apt update -y

# Install Docker & Git
apt install -y docker.io git

# Enable Docker
systemctl enable docker
systemctl start docker

# Add ubuntu user to docker group
usermod -aG docker ubuntu

# Clone project
cd /home/ubuntu
git clone https://github.com/KRISHNAJAISWAL04/zero-touch-aws-deployment.git      
           

# Go to project
cd /home/ubuntu/zero-touch-aws-deployment/app

# Build image
docker build -t zero-touch-aws-deployment-app .

# Run container
docker run -d \
  --name zero-touch-aws-deployment-container \
  -p 8000:8000 \
  --restart unless-stopped \
   zero-touch-aws-deployment-app