
#create aws provider or version
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "4.61.0"
      version = "5.43.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}
