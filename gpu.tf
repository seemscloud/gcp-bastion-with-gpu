module "gpu" {
  source = "./gpu"

  # Network
  aaa_network_aaa-name = module.networking.aaa_network_aaa-name

  # Instance (GPU)
  aaa_instance_bbb-name           = local.aaa_instance_bbb-name
  aaa_instance_bbb-count          = var.aaa_instance_bbb-count
  aaa_instance_bbb-image          = var.aaa_instance_bbb-image
  aaa_instance_bbb-root_disk_size = var.aaa_instance_aaa-root_disk_size
  aaa_instance_bbb-type           = var.aaa_instance_bbb-type
  aaa_instance_bbb-zones          = var.aaa_instance_bbb-zones
  aaa_instance_bbb-tags           = var.aaa_instance_bbb-tags
  aaa_instance_bbb-subnet-name    = module.networking.aaa_instance_bbb-subnet-name
}