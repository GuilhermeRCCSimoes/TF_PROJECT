# Destroy Terraform-managed infrastructure
echo "Destroying Terraform-managed infrastructure..."
cd ../terraform
terraform destroy -auto-approve

# Stop Minikube
echo "Stopping Minikube..."
minikube stop

# Delete Minikube cluster
echo "Deleting Minikube cluster..."
minikube delete

# Done
echo "Cleanup complete."