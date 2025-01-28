module "meta_kubernetes" {
  source = "../../modules/kubernetes"

  cluster_name = var.meta_cluster_name
  node_count   = var.meta_node_count
  node_size    = var.meta_node_size
}

module "meta_odoo" {
  source = "../../modules/odoo"

  namespace         = var.meta_namespace
  odoo_image        = var.meta_odoo_image
  odoo_service_type = var.meta_odoo_service_type
}

output "meta_cluster_endpoint" {
  value = module.meta_kubernetes.endpoint
}

output "meta_odoo_service_url" {
  value = module.meta_odoo.url
}