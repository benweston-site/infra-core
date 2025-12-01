resource "digitalocean_project" "infra_core" {
  name        = "infra-core"
  description = "Core project setup for Terraform remote state and foundational resources."
  purpose     = "Operational / Developer tooling"
  environment = "Production"
}
