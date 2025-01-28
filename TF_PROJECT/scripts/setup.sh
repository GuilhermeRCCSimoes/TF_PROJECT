# Set up the environment
echo "Setting up the environment..."

# Initialize Terraform
echo "Initializing Terraform..."
cd ../terraform
terraform init

# Validate Terraform files
echo "Validating Terraform configuration..."
terraform validate

# Apply Terraform configuration
echo "Applying Terraform configuration..."
terraform apply -auto-approve

# Set up Minikube
echo "Setting up Minikube..."
cd ../minikube
./init.sh

# Done
echo "Environment setup complete."