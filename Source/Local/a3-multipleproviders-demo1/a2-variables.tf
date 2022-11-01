# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Data Types => string | number | bool | any | list | map | object | tuple | set
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

variable "pet_data_filename" {
  type    = string
  default = "./files/pet_data.txt"
}

variable "pet_data_filecontent" {
  type    = string
  default = "We love pets!"
}

variable "mrs_pet_prefix" {
  type    = string
  default = "Mrs"
}

variable "mrs_pet_separator" {
  type    = string
  default = ". "
}

variable "mr_pet_prefix" {
  type    = string
  default = "Mr"
}

variable "mr_pet_separator" {
  type    = string
  default = "* "
}

variable "pet_name_length" {
  type    = number
  default = 1
}

variable "random_data_length" {
  type    = number
  default = 10
}

variable "random_data_min_upper" {
  type    = number
  default = 4
}

variable "secret_data_filename" {
  type    = string
  default = "./files/secret_data.txt"
}

variable "secret_data_filecontent" {
  type    = string
  default = "FIFA 21 | Boxing"
}
