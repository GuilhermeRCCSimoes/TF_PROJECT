# modules/odoo/ingress.tf
resource "kubernetes_ingress" "odoo" {
  metadata {
    name      = "odoo-ingress"
    namespace = var.namespace
    annotations = {
      "nginx.ingress.kubernetes.io/rewrite-target" = "/"
      "nginx.ingress.kubernetes.io/ssl-redirect"   = "true"
    }
  }

  spec {
    tls {
      hosts      = ["${var.namespace}.example.com"]
      secret_name = "${var.namespace}-tls"
    }

    rule {
      host = "${var.namespace}.example.com"

      http {
        path {
          path = "/"
          backend {
            service_name = "odoo-service"
            service_port = "8069"
          }
        }
      }
    }
  }
}