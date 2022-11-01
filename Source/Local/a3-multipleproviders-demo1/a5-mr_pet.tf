resource "random_pet" "mr-pet" {
  prefix    = var.mr_pet_prefix
  separator = "*"
  length    = var.pet_name_length
}
