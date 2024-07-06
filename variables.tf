variable "project_name" {
  description = "This is the name of the project"
  default = "terraform-demo-428615"
}

variable "region" {
  description = "This is the name of the region"
  default = "us-central1"
}

variable "location" {
  description = "This is the name of the location"
  default = "US"
}

variable "bucket_name" {
  description = "This is the name of the bucket"
  default = "maodo-bkt-terra-bucket"
}

variable "storage_class" {
  description = "This is the name of the storage class"
  default = "STANDARD"
}

variable "credentials" {
  description = "This is the path to the credentials"
  default = "./keys/tf-gcp-credentials.json"
}