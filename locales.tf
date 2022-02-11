locals {
  random = "${var.prefix}${random_string.random.result}"

  # Network
  aaa_network_aaa-name = "${local.random}-${var.aaa_network_aaa-name}"

  # Instance (Bastion)
  aaa_instance_aaa-name = "${local.random}-${var.aaa_instance_aaa-name}"

  # Instance (GPU)
  aaa_instance_bbb-name = "${local.random}-${var.aaa_instance_bbb-name}"
}