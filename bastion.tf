module "bastion" {
  source = "./bastion"

  # Network
  aaa_network_aaa-name = module.networking.aaa_network_aaa-name

  # Instance (Bastion)
  aaa_instance_aaa-name             = local.aaa_instance_aaa-name
  aaa_instance_aaa-image            = var.aaa_instance_aaa-image
  aaa_instance_aaa-root_disk_size   = var.aaa_instance_aaa-root_disk_size
  aaa_instance_aaa-root_disk_type   = var.aaa_instance_aaa-root_disk_type
  aaa_instance_aaa-desired_status   = var.aaa_instance_aaa-desired_status
  aaa_instance_aaa-type             = var.aaa_instance_aaa-type
  aaa_instance_aaa-zones            = var.aaa_instance_aaa-zones
  aaa_instance_aaa-tags             = var.aaa_instance_aaa-tags
  aaa_instance_aaa-external_address = module.networking.aaa_instance_aaa-external_address
  aaa_instance_aaa-subnet-name      = module.networking.aaa_instance_aaa-subnet-name
}