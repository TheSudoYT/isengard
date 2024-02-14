terraform {
  backend "s3" {
    bucket         = "isengard-terraform-state" # Use the appropriate bucket name for each project
    key            = "path/to/my/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "isengard-terraform-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "example_param" {
  name  = "/config/database/password" 
  type  = "SecureString"
  value = "2ndBreakfast"


  tags = {
    Environment = "Middle Earth"
}
}
