variable "namespace" {
  description = "Namespace where Odoo is deployed"
  type        = string
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
  description = "Type of Kubernetes service for Odoo application"
  type        = string
  default     = "ClusterIP"
}