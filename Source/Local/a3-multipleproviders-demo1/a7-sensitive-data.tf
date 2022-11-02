resource "local_sensitive_file" "sensitive_data" {
  filename = var.secret_data_filename
  content  = var.secret_data_filecontent
}
