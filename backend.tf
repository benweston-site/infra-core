terraform {
  backend "gcs" {
    bucket = "tfstate-536156"
    prefix = "infra-core/prod/"
  }
}
