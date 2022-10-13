resource "aws_instance" "nginx1" {
  ami                    = nonsensitive(data.aws_ssm_parameter.ami.value)
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnet1forwebapp.id
  vpc_security_group_ids = [aws_security_group.nginx-sg.id]

  user_data = <<EOF
#! /bin/bash
sudo amazon-linux-extras install -y nginx1
sudo service nginx start
sudo rm /usr/share/nginx/html/index.html
echo '<html><head><title>Taco Team Server 1</title></head><body style=\"background-color:#ABCDEF\"><p style=\"text-align: center;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size:28px; color: orange;\">You did it! Have a &#127790; (Version 2)</span></span></p></body></html>' | sudo tee /usr/share/nginx/html/index.html
EOF

  tags = merge(local.common_tags, local.ec2_name)

}

resource "aws_instance" "nginx2" {
  ami                    = nonsensitive(data.aws_ssm_parameter.ami.value)
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnet2forwebapp.id
  vpc_security_group_ids = [aws_security_group.nginx-sg.id]

  user_data = <<EOF
#! /bin/bash
sudo amazon-linux-extras install -y nginx1
sudo service nginx start
sudo rm /usr/share/nginx/html/index.html
echo '<html><head><title>Taco Team Server 2</title></head><body style=\"background-color:#ABCDEF\"><p style=\"text-align: center;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size:28px; color: orange;\">You did it! Have a &#127790; (Version 2)</span></span></p></body></html>' | sudo tee /usr/share/nginx/html/index.html
EOF

  tags = merge(local.common_tags, local.ec2_name)

}
