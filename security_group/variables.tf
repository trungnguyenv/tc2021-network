variable "environment" {
  description = "Environment Name"
}

variable "main_vpc_id" {
  default = "Main VPC ID"
}

variable "ssh_source_whitelist" {
  description = "SSH Whitelist IPs"
  type        = list(string)
}
