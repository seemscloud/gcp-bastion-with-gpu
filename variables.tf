# Configuration
variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "prefix" {
  type = string
}

# Keys
variable "terraform_user" {
  type = string
}

variable "terraform_ssh_key_pub" {
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

variable "aaa_instance_aaa-tags" {
  type = list(string)
}

variable "aaa_instance_aaa-region" {
  type = string
}

variable "aaa_instance_aaa-zones" {
  type = string
}

variable "aaa_instance_aaa-cidr" {
  type = string
}

variable "aaa_instance_aaa-type" {
  type = string
}

variable "aaa_instance_aaa-preemptible" {
  type = bool
}

# Instances (GPU)
variable "aaa_instance_bbb-name" {
  type = string
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

variable "aaa_instance_bbb-count" {
  type = number
}

variable "aaa_instance_bbb-tags" {
  type = list(string)
}

variable "aaa_instance_bbb-region" {
  type = string
}

variable "aaa_instance_bbb-zones" {
  type = string
}

variable "aaa_instance_bbb-cidr" {
  type = string
}

variable "aaa_instance_bbb-type" {
  type = string
}

variable "aaa_instance_bbb-preemptible" {
  type = string
}