variable "meta_cluster_name" {
  description = "The name of Meta's Kubernetes cluster"
  type        = string
  default     = "meta-k8s-cluster"
}

variable "meta_node_count" {
  description = "Number of nodes in Meta's Kubernetes cluster"
  type        = number
  default     = 4
}

variable "meta_node_size" {
  description = "Size of the nodes in Meta's Kubernetes cluster"
  type        = string
  default     = "t3.medium"
}

variable "meta_namespace" {
  description = "Namespace for Meta's Odoo application"
  type        = string
  default     = "meta-namespace"
}

variable "meta_odoo_image" {
  description = "Docker image for Meta's Odoo application"
  type        = string
  default     = "odoo:14"
}

variable "meta_odoo_service_type" {
  description = "Service type for Meta's Odoo (e.g., ClusterIP, NodePort, LoadBalancer)"
  type        = string
  default     = "ClusterIP"
}