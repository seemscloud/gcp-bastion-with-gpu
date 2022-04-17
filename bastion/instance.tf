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
    preemptible       = var.aaa_instance_aaa-preemptible
    automatic_restart = var.aaa_instance_aaa-automatic_restart
  }

  connection {
    type = "ssh"
    user = var.terraform_user
    host = var.aaa_instance_aaa-external_address
    private_key = "${file("~/.ssh/id_rsa")}"
  }

  # count = 0

  provisioner "remote-exec" {
    inline = [
      "sudo -u root apt-get update",
      "sudo -u root apt-get install -y ca-certificates curl gnupg lsb-release git",
      "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo -u root gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg",
      "echo \"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable\" | sudo -u root tee /etc/apt/sources.list.d/docker.list > /dev/null",
      "sudo -u root apt-get update",
      "sudo -u root apt-get install -y docker-ce docker-ce-cli containerd.io",
      "sudo -u root find ~/ -mindepth 1 -maxdepth 1 -exec rm -rf {} \\;"
    ]
  }
}