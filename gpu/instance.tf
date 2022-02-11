resource "google_compute_instance" "aaa_instance_bbb" {
  name         = "${var.aaa_instance_bbb-name}-${count.index}"
  count        = var.aaa_instance_bbb-count
  machine_type = var.aaa_instance_bbb-type
  zone         = var.aaa_instance_bbb-zones
  tags         = var.aaa_instance_bbb-tags

  boot_disk {
    initialize_params {
      image = var.aaa_instance_bbb-image
      size  = var.aaa_instance_bbb-root_disk_size
    }
  }

  network_interface {
    network    = var.aaa_network_aaa-name
    subnetwork = var.aaa_instance_bbb-subnet-name
  }

  scheduling {
    on_host_maintenance = "TERMINATE"
  }
}