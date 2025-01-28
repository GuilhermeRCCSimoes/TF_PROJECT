# Generate Terraform documentation
echo "Generating Terraform documentation..."
cd ../terraform
terraform-docs markdown table . > README.md

# Done
echo "Documentation generated successfully."