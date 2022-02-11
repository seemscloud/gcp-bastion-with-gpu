module "networking" {
  source = "./networking"

  # Network
  aaa_network_aaa-name = local.aaa_network_aaa-name

  # Instance (Bastion)
  aaa_instance_aaa-name = local.aaa_instance_aaa-name
  aaa_instance_aaa-region = var.aaa_instance_aaa-region
  aaa_instance_aaa-cidr = var.aaa_instance_aaa-cidr

  # Instances (GPU)
  aaa_instance_bbb-name = local.aaa_instance_bbb-name
  aaa_instance_bbb-count = var.aaa_instance_bbb-count
  aaa_instance_bbb-region = var.aaa_instance_bbb-region
  aaa_instance_bbb-cidr = var.aaa_instance_bbb-cidr
}