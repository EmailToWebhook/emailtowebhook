provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "production"
      Project     = "email-to-webhook"
      ManagedBy   = "terraform"
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "terraform-tregfd"
    key            = "terraform/state.tfstate" # Path to the state file in the bucket
    region         = "us-east-1"
    encrypt        = true # Enable server-side encryption
  }
}
 
