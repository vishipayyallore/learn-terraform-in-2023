resource "random_pet" "mrs-pet" {
  prefix    = var.mrs_pet_prefix
  separator = "."
  length    = var.pet_name_length
}
