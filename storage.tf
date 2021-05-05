resource "google_storage_bucket" "terraform_state_bucket" {
  name                        = var.state_bucket_name
  location                    = upper(var.region)
  uniform_bucket_level_access = true
  force_destroy               = true
}
