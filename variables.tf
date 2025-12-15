variable "org_id" {
  description = "The Organization ID where resources will be deployed"
  type        = string
}

variable "billing_account_id" {
  description = "Google Cloud Billing Account ID"
  type        = string
  sensitive   = true
}

variable "env" {
  description = "The environment name (e.g., sandbox, dev, test, stage, prod)"
  type        = string

  validation {
    condition     = contains(["sandbox", "dev", "test", "stage", "prod"], var.env)
    error_message = "The env variable must be one of 'sandbox', 'dev', 'test', 'stage' or 'prod'."
  }
}

variable "region" {
  description = "The Google Cloud region"
  type        = string
}
