variable "application" {
  type        = string
  description = "The name of the application to be used as domain-name"
}

variable "api_name" {
  type        = string
  description = "The name of the api to be used as common-name"
}

variable "hcp_bucket" {
  type        = string
  description = "HCP bucket name where HCP Packer Image can be referenced"
}
