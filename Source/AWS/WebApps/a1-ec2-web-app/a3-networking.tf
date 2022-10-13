resource "aws_vpc" "vpcforwebapp" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpcforwebapp.id

}

resource "aws_subnet" "subnet1forwebapp" {
  cidr_block              = "10.0.0.0/24"
  vpc_id                  = aws_vpc.vpcforwebapp.id
  map_public_ip_on_launch = true
}
