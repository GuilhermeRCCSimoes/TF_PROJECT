module "rockstar_kubernetes" {
  source = "../../modules/kubernetes"

  cluster_name = var.rockstar_cluster_name
  node_count   = var.rockstar_node_count
  node_size    = var.rockstar_node_size
}

module "rockstar_odoo" {
  source = "../../modules/odoo"

  namespace         = var.rockstar_namespace
  odoo_image        = var.rockstar_odoo_image
  odoo_service_type = var.rockstar_odoo_service_type
}

output "rockstar_cluster_endpoint" {
  value = module.rockstar_kubernetes.endpoint
}

output "rockstar_odoo_service_url" {
  value = module.rockstar_odoo.url
}