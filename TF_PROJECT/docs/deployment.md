## Deployment Guide

Follow these steps to deploy the entire infrastructure and applications:

### Step 1: Set Up Prerequisites
Ensure you have installed all the tools and met the requirements listed in `prerequisites.md`.

### Step 2: Initialize Terraform
1. Navigate to the `terraform` directory.
2. Initialize Terraform with:
   ```bash
   terraform init
   ```

### Step 3: Configure Terraform Workspaces
- Set up the desired workspace (e.g., `dev`, `prod`, or `qa`) by running:
  ```bash
  terraform workspace new <workspace_name>
  ```

### Step 4: Deploy Infrastructure
1. Apply the Terraform configurations:
   ```bash
   terraform apply -var-file="environments/<environment>/terraform.tfvars"
   ```
   Replace `<environment>` with `dev`, `prod`, or `qa` as required.

### Step 5: Set Up Minikube
1. Navigate to the `minikube` directory.
2. Run the initialization script:
   ```bash
   ./init.sh
   ```

### Step 6: Configure Docker
1. Navigate to the `docker` directory.
2. Build and deploy the Docker environment:
   ```bash
   docker-compose up --build
   ```