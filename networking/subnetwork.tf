resource "google_compute_subnetwork" "aaa_instance_aaa" {
  name          = var.aaa_instance_aaa-name
  ip_cidr_range = var.aaa_instance_aaa-cidr
  region        = var.aaa_instance_aaa-region
  network       = google_compute_network.aaa_network_aaa.name

  depends_on = [
    google_compute_network.aaa_network_aaa
  ]
}

resource "google_compute_subnetwork" "aaa_instance_bbb" {
  name          = var.aaa_instance_bbb-name
  ip_cidr_range = var.aaa_instance_bbb-cidr
  region        = var.aaa_instance_bbb-region
  network       = google_compute_network.aaa_network_aaa.name

  depends_on = [
    google_compute_network.aaa_network_aaa
  ]
}