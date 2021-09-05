terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.82.0"
    }
  }
}

locals {
  credentials = (
    var.credentials != "" ? var.credentials : file(".env/service-account.json")
  )
}

provider "google" {
  credentials = local.credentials

  project = var.project
  region  = var.region
  zone    = var.zone
}

# Use private module
# name: terraform-deuterionnet-devinfra
# version: 0.0.1
module "devinfra" {
  source  = "app.terraform.io/deuterionnet/devinfra/deuterionnet"
  version = "0.0.1"
  project = var.project
}
