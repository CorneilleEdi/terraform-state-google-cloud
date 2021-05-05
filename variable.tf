variable "project_id" {
  description = "Google Cloud Platform (GCP) Project ID"
  type        = string
  default     = "loopbin"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "europe-west1"
}


variable "zone" {
  description = "GCP zone."
  type        = string
  default     = "europe-west1-b"
}

variable "name" {
  description = "Nom du server web "
  type        = string
  default     = "nginx-server"
}

variable "machine_type" {
  description = "type de machie sur GCE"
  type        = string
  default     = "n1-highcpu-2"
}

variable "state_bucket_name" {
  description = "Nom du bucket ou sont enregister les etats"
  type        = string
  default     = "loopbin-terraform-state-bucket"
}
