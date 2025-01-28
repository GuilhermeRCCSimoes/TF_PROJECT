resource "kubernetes_namespace" "dynamic" {
  count = length(var.namespaces)
  metadata {
    name = var.namespaces[count.index]
  }
}