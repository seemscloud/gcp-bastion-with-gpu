variable "terraform_user" {
  type = string
}

# Network
variable "aaa_network_aaa-name" {
  type = string
}

# Instance (Bastion)
variable "aaa_instance_aaa-name" {
  type = string
}

variable "aaa_instance_aaa-image" {
  type = string
}

variable "aaa_instance_aaa-root_disk_size" {
  type = number
}

variable "aaa_instance_aaa-root_disk_type" {
  type = string
}

variable "aaa_instance_aaa-desired_status" {
  type = string
}

variable "aaa_instance_aaa-type" {
  type = string
}

variable "aaa_instance_aaa-zones" {
  type = string
}

variable "aaa_instance_aaa-tags" {
  type = list(string)
}

variable "aaa_instance_aaa-external_address" {
  type = string
}

variable "aaa_instance_aaa-subnet-name" {
  type = string
}

variable "aaa_instance_aaa-preemptible" {
  type = bool
}

variable "aaa_instance_aaa-automatic_restart" {
  type = bool
}

variable "aaa_instance_aaa-remote-exec" {
  type = list(string)
}