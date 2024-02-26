terraform {
  
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "example_param" {
  name  = "/gollum/primary-west-quote" 
  type  = "SecureString"
  value = "curse-the-baggins!"


  tags = {
    Environment = "Middle Earth"
}
}