## Terraform Documentation

### Overview
This project uses Terraform to manage infrastructure for development, production, and QA environments. Each environment is isolated using Terraform workspaces.

### Modules
- **Kubernetes**: Manages Kubernetes namespaces and configurations.
- **Odoo**: Deploys Odoo-specific configurations and resources.
- **TLS**: Manages TLS secrets and certificates.

### Workspace Configuration
Workspaces allow you to isolate environments (e.g., `dev`, `prod`, `qa`). Use the following commands:
- Create a workspace:
  ```bash
  terraform workspace new <workspace_name>
  ```
- Select a workspace:
  ```bash
  terraform workspace select <workspace_name>
  ```

### Best Practices
- Use separate variable files for each environment.
- Regularly validate your configuration using `terraform validate`.
- Use `terraform fmt` to maintain consistent formatting.