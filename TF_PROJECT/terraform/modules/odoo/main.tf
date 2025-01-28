module "odoo_application" {
  source       = "./odoo"
  namespace    = var.namespace
  odoo_image   = var.odoo_image
  replicas     = var.replicas
  service_type = var.service_type
}