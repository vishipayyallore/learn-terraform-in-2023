resource "random_pet" "mrs_pet" {
  prefix    = var.mrs_pet_prefix
  separator = var.mrs_pet_separator
  length    = var.pet_name_length
}
