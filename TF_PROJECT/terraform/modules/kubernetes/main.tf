# modules/kubernetes/main.tf
module "kubernetes_cluster" {
  source         = "./kubernetes"
  cluster_name   = var.cluster_name
  node_count     = var.node_count
  node_size      = var.node_size
  namespace      = var.namespace
  odoo_image     = var.odoo_image
  replicas       = var.replicas
  service_type   = var.service_type
}