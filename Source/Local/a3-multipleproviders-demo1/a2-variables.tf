# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Data Types => string | number | bool | any
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

variable "pet_data_filename" {
  type    = string
  default = "./files/pet_data.txt"
}

variable "secret_data_filename" {
  type    = string
  default = "./files/secret_data.txt"
}

variable "mrs_pet_prefix" {
  type    = string
  default = "Mrs"
}

variable "mr_pet_prefix" {
  type    = string
  default = "Mr"
}

variable "pet_name_length" {
  type    = number
  default = 1
}
