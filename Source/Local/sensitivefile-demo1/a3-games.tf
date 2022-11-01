resource "local_sensitive_file" "secret_data" {
  filename = var.secret_data_filename
  content  = "FIFA 21 | Boxing"
}
