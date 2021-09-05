terraform {
  required_version = ">= 1.0.5"
}

# Use private module
# name: terraform-deuterionnet-devinfra
# version: 0.0.3
module "devinfra" {
  source         = "app.terraform.io/deuterionnet/devinfra/deuterionnet"
  version        = "0.0.3"
  gcp_project_id = var.gcp_project_id
  gcp_region     = var.gcp_region
  gcp_zone       = var.gcp_zone
}
