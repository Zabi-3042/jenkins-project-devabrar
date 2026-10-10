terraform {

  backend "s3" {
    bucket         = "my-terraform-state-bucket-unique-id-3042"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }

  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
}