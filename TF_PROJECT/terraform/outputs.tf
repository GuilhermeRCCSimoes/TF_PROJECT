output "cluster_name" {
  description = "The name of the Kubernetes cluster"
  value       = var.cluster_name
}

output "odoo_service_type" {
  description = "The service type of the Odoo application"
  value       = var.odoo_service_type
}

output "cluster_endpoint" {
  description = "The endpoint of the Kubernetes cluster"
  value       = module.kubernetes_cluster.endpoint
}

output "odoo_service_url" {
  description = "The URL of the Odoo application service"
  value       = module.odoo_application.url
}