resource "aws_vpc" "vpcforwebapp" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = local.common_tags
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpcforwebapp.id

  tags = local.common_tags
}

resource "aws_subnet" "subnet1forwebapp" {
  cidr_block              = var.vpc_subnet1forwebapp_cidr_block
  vpc_id                  = aws_vpc.vpcforwebapp.id
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone       = data.aws_availability_zones.available.names[0]

  tags = local.common_tags
}
