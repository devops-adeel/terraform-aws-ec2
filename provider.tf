terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.54.0"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.53.0"
    }
  }
}
