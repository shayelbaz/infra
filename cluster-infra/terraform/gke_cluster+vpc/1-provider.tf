# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "infra-389111"
  region  = "us-central1"
}


# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "terraform-state-infra-389111"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}