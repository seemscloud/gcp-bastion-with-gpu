# Network
variable "aaa_network_aaa-name" {
  type = string
}

# Instance (Bastion)
variable "aaa_instance_aaa-name" {
  type = string
}

variable "aaa_instance_aaa-region" {
  type = string
}

variable "aaa_instance_aaa-cidr" {
  type = string
}

# Instances (GPU)
variable "aaa_instance_bbb-name" {
  type = string
}

variable "aaa_instance_bbb-count" {
  type = number
}

variable "aaa_instance_bbb-region" {
  type = string
}

variable "aaa_instance_bbb-cidr" {
  type = string
}