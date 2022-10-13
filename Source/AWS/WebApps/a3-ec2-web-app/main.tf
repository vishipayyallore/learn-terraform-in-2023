
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.34.0"
    }
  }
}

##################################################################################
# DATA
##################################################################################

data "aws_ssm_parameter" "ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

data "aws_availability_zones" "available" {
  state = "available"
}
