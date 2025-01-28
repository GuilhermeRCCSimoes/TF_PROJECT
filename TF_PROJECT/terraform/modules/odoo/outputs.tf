output "odoo_ingress_host" {
  value = "${var.namespace}.example.com"
}

output "odoo_service_name" {
  value = "odoo-service"
}