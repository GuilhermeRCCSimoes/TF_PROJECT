provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}

provider "tls" {}