terraform {
  required_version = ">= 1.3.0"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.16.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0.4"
    }
  }
  backend "local" {
    path = "terraform.tfstate"
  }
}

module "kubernetes_cluster" {
  source = "./modules/kubernetes"

  cluster_name = var.cluster_name
  node_count   = var.node_count
  node_size    = var.node_size
}

module "odoo_application" {
  source = "./modules/odoo"

  namespace         = var.namespace
  odoo_image        = var.odoo_image
  odoo_service_type = var.odoo_service_type
}

output "cluster_endpoint" {
  value = module.kubernetes_cluster.endpoint
}

output "odoo_service_url" {
  value = module.odoo_application.url
}