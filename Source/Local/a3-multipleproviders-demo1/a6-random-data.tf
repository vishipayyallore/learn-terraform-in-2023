resource "random_string" "random_data" {
  length    = var.random_data_length
  min_upper = var.random_data_min_upper
}
