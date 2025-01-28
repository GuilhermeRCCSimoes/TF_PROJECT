# modules/tls/main.tf
resource "kubernetes_secret" "tls" {
  metadata {
    name      = "${var.namespace}-tls"
    namespace = var.namespace
  }

  data = {
    "tls.crt" = base64encode(file(var.tls_cert_file))
    "tls.key" = base64encode(file(var.tls_key_file))
  }
}