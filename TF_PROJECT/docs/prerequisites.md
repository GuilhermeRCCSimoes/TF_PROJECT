## Prerequisites

Before deploying, ensure the following tools and configurations are in place:

### Tools
- **Terraform**: Version 1.3 or later
- **Minikube**: Latest version with `kubectl` installed
- **Docker**: Version 20.10 or later
- **docker-compose**: Version 1.29 or later
- **Helm**: Latest version for managing Kubernetes addons

### Configuration
- Access to a Kubernetes cluster via Minikube
- Sufficient system resources for Minikube (at least 4GB RAM and 2 CPUs)
- Valid TLS certificates (base64-encoded) for the `tls-secret.yaml`