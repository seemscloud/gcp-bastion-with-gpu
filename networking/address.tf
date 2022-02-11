resource "google_compute_address" "aaa_instance_aaa-external" {
  name = "${var.aaa_instance_aaa-name}-external"

  address_type = "EXTERNAL"
}

resource "google_compute_address" "aaa_instance_bbb-external-nat" {
  name = "${var.aaa_instance_bbb-name}-external-nat"

  address_type = "EXTERNAL"
}