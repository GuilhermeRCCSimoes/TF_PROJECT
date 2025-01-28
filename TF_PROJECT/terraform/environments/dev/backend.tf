terraform {
  backend "s3" {
    bucket         = var.dev_backend_bucket
    key            = "env/dev/terraform.tfstate"
    region         = var.dev_backend_region
    encrypt        = true
  }
}