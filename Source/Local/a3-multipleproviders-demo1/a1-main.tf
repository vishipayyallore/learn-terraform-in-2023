terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.2.3"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "local" {
  # Configuration options
}

provider "random" {
  # Configuration options
}
