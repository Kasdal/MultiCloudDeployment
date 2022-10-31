# Terraform Block
terraform {
  required_version = "~> 1.0" 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    google = {
      source = "hashicorp/google"
      version = "4.41.0"
    }
    null = {
      source = "hashicorp/null"
      version = "~> 3.0"
    }    
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }            
  }
}
# Provider Block

provider "google" {
  credentials = "${file("credentials.json")}"
  project     = "${var.project}"
  region      = "${var.gcp_region}"
}


provider "aws" {
  region = "${var.region-aws}"
  profile = "${var.profile}"
}
