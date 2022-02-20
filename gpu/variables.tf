# Network
variable "aaa_network_aaa-name" {
  type = string
}

# Instance (Bastion)
variable "aaa_instance_bbb-name" {
  type = string
}

variable "aaa_instance_bbb-count" {
  type = number
}

variable "aaa_instance_bbb-image" {
  type = string
}

variable "aaa_instance_bbb-root_disk_size" {
  type = number
}

variable "aaa_instance_bbb-root_disk_type" {
  type = string
}

variable "aaa_instance_bbb-desired_status" {
  type = string
}

variable "aaa_instance_bbb-type" {
  type = string
}

variable "aaa_instance_bbb-zones" {
  type = string
}

variable "aaa_instance_bbb-tags" {
  type = list(string)
}

variable "aaa_instance_bbb-subnet-name" {
  type = string
}