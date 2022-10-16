locals {
  common_tags = {
    company      = var.company
    project      = "${var.company}-${var.project}"
    billing_code = var.billing_code
  }

  ec2_name1 = {
    Name = "EC2 1 for ${var.project}"
  }

  ec2_name2 = {
    Name = "EC2 2 for ${var.project}"
  }
}
