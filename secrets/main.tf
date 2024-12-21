# as a practice, always set your statefile storage, in an encrypted bucket (S3, OSS Alibaba, GCP Coldline, Azure Storage)

variable "usernme" {
  description = "username of the user"
  type        = string
  sensitive   = true
}

variable "password" {
  description = "password of the user"
  type        = string
  sensitive   = true
}

output "username" {
    description = "username of user"
    value = var.username
}

output "password" {
    description = "password of user"
    value = var.password
}

