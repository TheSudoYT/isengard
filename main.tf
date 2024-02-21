terraform {
  
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
