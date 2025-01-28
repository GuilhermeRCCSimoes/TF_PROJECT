# Script to configure Terraform workspaces and environment-specific variables

set -e

# Define workspaces
WORKSPACES=("dev" "qa" "prod")

# Initialize Terraform
terraform init

# Check and create workspaces if they don't exist
for workspace in "${WORKSPACES[@]}"; do
  if ! terraform workspace list | grep -q "^\*? ${workspace}$"; then
    echo "Creating workspace: ${workspace}"
    terraform workspace new ${workspace}
  else
    echo "Workspace ${workspace} already exists."
  fi

done

# Set the active workspace to 'dev' as default
terraform workspace select dev

echo "Workspace configuration complete. Active workspace: $(terraform workspace show)"