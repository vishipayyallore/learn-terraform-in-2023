resource "aws_route_table" "rtb" {
  vpc_id = aws_vpc.vpcforwebapp.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = local.common_tags
}

resource "aws_route_table_association" "rta-subnetforwebapp" {
  subnet_id      = aws_subnet.subnetforwebapp.id
  route_table_id = aws_route_table.rtb.id
}
