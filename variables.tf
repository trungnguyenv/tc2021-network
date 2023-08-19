variable "environment" {
  description = "Environment Name (dev|qa|uat|prod)"
}

variable "region" {
  default = "AWS Region"
}

variable "base_cidr" {
  description = "Base CIDR for VPC"
}

variable "ssh_source_whitelist" {
  description = "SSH Whitelist IPs"
  type        = list(string)
}
