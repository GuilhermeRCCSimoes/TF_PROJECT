# Initialize Minikube
echo "Starting Minikube..."
minikube start --driver=docker

# Enable Ingress Addon
echo "Enabling Ingress addon..."
minikube addons enable ingress

# Apply Kubernetes Configurations
echo "Applying configurations..."
kubectl apply -f ./config/kubeconfig.yaml
kubectl apply -f ./config/namespace.yaml
kubectl apply -f ./config/storage-class.yaml
kubectl apply -f ./config/ingress.yaml
kubectl apply -f ./config/tls-secret.yaml

# Output Minikube status
echo "Minikube status:"
minikube status

# Done
echo "Minikube setup complete."