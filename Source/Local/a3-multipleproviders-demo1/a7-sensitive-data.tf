resource "local_sensitive_file" "sensitive_data" {
  filename = var.secret_data_filename
  content  = "FIFA 21 | Boxing"
}
