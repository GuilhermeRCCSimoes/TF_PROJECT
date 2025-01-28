terraform {
  backend "s3" {
    bucket         = var.prod_backend_bucket
    key            = "env/prod/terraform.tfstate"
    region         = var.prod_backend_region
    encrypt        = true
  }
}