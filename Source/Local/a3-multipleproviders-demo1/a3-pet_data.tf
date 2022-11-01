resource "local_file" "pet_data" {
  filename = var.pet_data_filename
  content  = "We love pets!"
}
