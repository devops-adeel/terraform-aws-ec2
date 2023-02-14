variable "application" {
  type        = string
  description = "The name of the application to be used as domain-name"
}

variable "api_name" {
  type        = string
  description = "The name of the application to be used as common-name"
}

variable "hcp_bucket" {
  type        = string
  description = "Bucket name where HCP Packer image is referenced"
}
