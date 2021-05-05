provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "local" {
    path = "state/terraform.tfstate"
  }
}

# terraform {
#   backend "gcs" {
#     bucket = "loopbin-terraform-state-bucket"
#     prefix = "state"
#   }
# }
