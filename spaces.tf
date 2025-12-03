resource "digitalocean_spaces_bucket" "terraform_state" {
  name   = "tfstate-${random_integer.suffix.result}"
  region = "lon1"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "cleanup-old-versions"
    enabled = true

    noncurrent_version_expiration {
      days = 90
    }

    abort_incomplete_multipart_upload_days = 7
  }

  force_destroy = false
}
