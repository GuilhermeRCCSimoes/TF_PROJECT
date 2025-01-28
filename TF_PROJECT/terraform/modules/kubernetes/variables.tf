variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the Kubernetes cluster"
  type        = number
}

variable "node_size" {
  description = "Size of nodes in the Kubernetes cluster"
  type        = string
}

variable "namespace" {
  description = "Default namespace for the Kubernetes cluster"
  type        = string
}

variable "namespaces" {
  description = "List of namespaces to create in the cluster"
  type        = list(string)
  default     = ["default", "dev", "qa", "prod"]
}

variable "odoo_image" {
  description = "Docker image for the Odoo application"
  type        = string
}

variable "replicas" {
  description = "Number of replicas for the Odoo application"
  type        = number
}

variable "service_type" {
  description = "Type of Kubernetes service for the Odoo application"
  type        = string
}