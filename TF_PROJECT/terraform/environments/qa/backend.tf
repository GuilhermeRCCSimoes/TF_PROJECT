terraform {
  backend "s3" {
    bucket         = var.qa_backend_bucket
    key            = "env/qa/terraform.tfstate"
    region         = var.qa_backend_region
    encrypt        = true
  }
}