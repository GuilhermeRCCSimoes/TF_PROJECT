variable "netflix_cluster_name" {
  description = "The name of Netflix's Kubernetes cluster"
  type        = string
  default     = "netflix-k8s-cluster"
}

variable "netflix_node_count" {
  description = "Number of nodes in Netflix's Kubernetes cluster"
  type        = number
  default     = 5
}

variable "netflix_node_size" {
  description = "Size of the nodes in Netflix's Kubernetes cluster"
  type        = string
  default     = "t3.large"
}

variable "netflix_namespace" {
  description = "Namespace for Netflix's Odoo application"
  type        = string
  default     = "netflix-namespace"
}

variable "netflix_odoo_image" {
  description = "Docker image for Netflix's Odoo application"
  type        = string
  default     = "odoo:13"
}

variable "netflix_odoo_service_type" {
  description = "Service type for Netflix's Odoo (e.g., ClusterIP, NodePort, LoadBalancer)"
  type        = string
  default     = "LoadBalancer"
}