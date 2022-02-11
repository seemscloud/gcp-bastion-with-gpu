# Internet to Bastion
resource "google_compute_firewall" "internet_to_aaa_interface_aaa" {
  name    = "internet-to-${var.aaa_instance_aaa-name}"
  network = google_compute_network.aaa_network_aaa.name

  allow {
    protocol = "tcp"
    ports    = [
      "22"
    ]
  }

  source_ranges = [
    "0.0.0.0/0"
  ]
}

# Bastion to All
resource "google_compute_firewall" "bastion_to_all" {
  name    = "bastion-to-${var.aaa_instance_bbb-name}"
  network = google_compute_network.aaa_network_aaa.name

  allow {
    protocol = "tcp"
    ports    = [
      "22"
    ]
  }

  source_tags = [
    "bastion"
  ]

  target_tags = [
    "all"
  ]
}