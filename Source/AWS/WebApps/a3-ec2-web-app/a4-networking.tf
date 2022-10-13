data "aws_ssm_parameter" "ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_vpc" "vpcforwebapp" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = local.common_tags
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpcforwebapp.id

  tags = local.common_tags
}

resource "aws_subnet" "subnetforwebapp" {
  cidr_block              = var.vpc_subnetforwebapp_cidr_block
  vpc_id                  = aws_vpc.vpcforwebapp.id
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = local.common_tags
}
