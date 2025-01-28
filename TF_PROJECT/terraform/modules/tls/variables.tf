variable "namespace" {
  description = "Namespace where the TLS secret will be created"
  type        = string
}

variable "tls_cert_file" {
  description = "Path to the TLS certificate file"
  type        = string
}

variable "tls_key_file" {
  description = "Path to the TLS key file"
  type        = string
}