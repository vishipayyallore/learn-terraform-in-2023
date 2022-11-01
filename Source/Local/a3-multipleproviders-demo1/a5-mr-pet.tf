resource "random_pet" "mr_pet" {
  prefix    = var.mr_pet_prefix
  separator = var.mr_pet_separator
  length    = var.pet_name_length
}
