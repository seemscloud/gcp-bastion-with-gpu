output "aaa_network_aaa-name" {
  value = google_compute_network.aaa_network_aaa.name
}

output "aaa_instance_aaa-external_address" {
  value = google_compute_address.aaa_instance_aaa-external.address
}

output "aaa_instance_bbb-external_nat_address" {
  value = google_compute_address.aaa_instance_bbb-external-nat.address
}

output "aaa_instance_aaa-subnet-name" {
  value = google_compute_subnetwork.aaa_instance_aaa.name
}

output "aaa_instance_bbb-subnet-name" {
  value = google_compute_subnetwork.aaa_instance_bbb.name
}