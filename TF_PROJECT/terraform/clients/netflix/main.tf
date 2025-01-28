module "netflix_kubernetes" {
  source = "../../modules/kubernetes"

  cluster_name = var.netflix_cluster_name
  node_count   = var.netflix_node_count
  node_size    = var.netflix_node_size
}

module "netflix_odoo" {
  source = "../../modules/odoo"

  namespace         = var.netflix_namespace
  odoo_image        = var.netflix_odoo_image
  odoo_service_type = var.netflix_odoo_service_type
}

output "netflix_cluster_endpoint" {
  value = module.netflix_kubernetes.endpoint
}

output "netflix_odoo_service_url" {
  value = module.netflix_odoo.url
}