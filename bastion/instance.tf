resource "google_compute_instance" "aaa_instance_aaa" {
  name           = var.aaa_instance_aaa-name
  machine_type   = var.aaa_instance_aaa-type
  zone           = var.aaa_instance_aaa-zones
  tags           = var.aaa_instance_aaa-tags
  desired_status = var.aaa_instance_aaa-desired_status

  boot_disk {
    initialize_params {
      image = var.aaa_instance_aaa-image
      size  = var.aaa_instance_aaa-root_disk_size
      type  = var.aaa_instance_aaa-root_disk_type
    }
  }

  network_interface {
    network    = var.aaa_network_aaa-name
    subnetwork = var.aaa_instance_aaa-subnet-name

    access_config {
      nat_ip = var.aaa_instance_aaa-external_address
    }
  }
  scheduling {
    preemptible = var.aaa_instance_aaa-preemptible
    automatic_restart = var.aaa_instance_aaa-automatic_restart
  }
}