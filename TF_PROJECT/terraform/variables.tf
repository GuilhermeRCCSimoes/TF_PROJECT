variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
  default     = "my-k8s-cluster"
}

variable "node_count" {
  description = "Number of nodes in the Kubernetes cluster"
  type        = number
  default     = 3
}

variable "node_size" {
  description = "Size of the nodes in the Kubernetes cluster"
  type        = string
  default     = "t3.medium"
}

variable "namespace" {
  description = "Namespace for the Odoo application"
  type        = string
  default     = "default"
}

variable "odoo_image" {
  description = "Docker image for the Odoo application"
  type        = string
  default     = "odoo:latest"
}

variable "odoo_service_type" {
  description = "Service type for Odoo (e.g., ClusterIP, NodePort, LoadBalancer)"
  type        = string
  default     = "LoadBalancer"
}