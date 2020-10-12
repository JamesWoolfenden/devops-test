terraform {

  required_providers {
    aws = {
      version = "~> 3.10.0"
      source  = "hashicorp/aws"
    }
    http = {
      version = "~> 1.2.0"
      source  = "hashicorp/http"

    }
  }

  backend "remote" {
    organization = "Wolf"

    workspaces {
      name = "buildit"
    }
  }
}
