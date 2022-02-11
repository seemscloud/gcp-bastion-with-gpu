resource "google_compute_router" "aaa_instance_bbb" {
  name    = var.aaa_instance_bbb-name
  region  = var.aaa_instance_bbb-region
  network = google_compute_network.aaa_network_aaa.name

  depends_on = [
    google_compute_network.aaa_network_aaa
  ]
}