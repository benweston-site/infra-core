
terraform {
  backend "gcs" {
    bucket = "tfstate-164812"
    prefix = "infra-core/prod/"
  }
}

/*
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}
*/