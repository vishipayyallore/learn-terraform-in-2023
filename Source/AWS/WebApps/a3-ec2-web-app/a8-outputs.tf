output "aws_instance_public_dns" {
  value = aws_instance.nginx1.public_dns
}

output "aws_instance2_public_dns" {
  value = aws_instance.nginx2.public_dns
}

output "aws_alb_public_dns" {
  value = aws_lb.nginx.dns_name
}
