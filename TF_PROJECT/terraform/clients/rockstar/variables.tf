variable "rockstar_cluster_name" {
  description = "The name of Rockstar's Kubernetes cluster"
  type        = string
  default     = "rockstar-k8s-cluster"
}

variable "rockstar_node_count" {
  description = "Number of nodes in Rockstar's Kubernetes cluster"
  type        = number
  default     = 6
}

variable "rockstar_node_size" {
  description = "Size of the nodes in Rockstar's Kubernetes cluster"
  type        = string
  default     = "t3.xlarge"
}

variable "rockstar_namespace" {
  description = "Namespace for Rockstar's Odoo application"
  type        = string
  default     = "rockstar-namespace"
}

variable "rockstar_odoo_image" {
  description = "Docker image for Rockstar's Odoo application"
  type        = string
  default     = "odoo:15"
}

variable "rockstar_odoo_service_type" {
  description = "Service type for Rockstar's Odoo (e.g., ClusterIP, NodePort, LoadBalancer)"
  type        = string
  default     = "NodePort"
}