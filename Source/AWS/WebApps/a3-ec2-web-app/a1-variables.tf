variable "region" {
  type    = string
  default = "us-east-1" # North Virginia
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_subnetforwebapp_cidr_block" {
  type    = string
  default = "10.0.0.0/24"
}

variable "map_public_ip_on_launch" {
  type    = bool
  default = true
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "company" {
  type        = string
  description = "Company name for resource tagging"
  default     = "ABC Company"
}

variable "project" {
  type        = string
  description = "Project name for resource tagging"
  default     = "WebApp"
}

variable "billing_code" {
  type        = string
  description = "Billing code for resource tagging"
  default     = "1234567890"
}
