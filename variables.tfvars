# Configuration
project_id = "core-337701"
region     = "europe-central2"
prefix     = "a"

# Keys
terraform_user        = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCxMR6x6rHclUBQI3IQVPZN8xjkAVVAZmS1PV/hNg/XPc5sl5fI7/3FLmwu+A9PDuiPu5++60Ns4NtYJcd+hVQ9m/htl6DGPeUoflin1pmVFSfKMUctTRWsl+e2ldt3CVmTgFclLABdLDR+cSb3jSqNXgonzjNcWbTfhrsSnqNuD+2GxXpGZXc4rYDloSrlGVOx0mEiyJrMocJFuVlh1JB8Os0KNnx5qD56h5zIRLGkhHhgXIO5kJ+hNB+vF3FV2Fq9Ar47+DrQiD/o9/h17HFDvD0tzze1GLYAJs4QcFJJPKdWM1kHyXa/p9TIFLc3rVnCrVx1NihgaEhiY+d452otV0p1Bq1tvotfPJ92BDSNlF7A1YuJNYqRkNNpwSPMznPQtVkeRCHTNH5MmMqhPptGEPLiDlkMUZeFFjTKz0IDo6QCX05WBl+SXYLo1l2R9jCoKstmoKvlsFY6fcYpSYj78X9E4bIX++LSLiG9oGXwg2xoZTlwofhqjnI+xc9tMiU=
EndOfMessage

# Network
aaa_network_aaa-name = "network"

# Instance (Bastion)
aaa_instance_aaa-name              = "bastion"
aaa_instance_aaa-image             = "ubuntu-2004-lts"
aaa_instance_aaa-root_disk_size    = 64
aaa_instance_aaa-root_disk_type    = "pd-ssd"
aaa_instance_aaa-desired_status    = "RUNNING"
aaa_instance_aaa-tags              = ["bastion", "all"]
aaa_instance_aaa-region            = "europe-central2"
aaa_instance_aaa-zones             = "europe-central2-a"
aaa_instance_aaa-cidr              = "10.100.255.0/24"
aaa_instance_aaa-type              = "c2d-highcpu-32"
aaa_instance_aaa-preemptible       = false
aaa_instance_aaa-automatic_restart = true
aaa_instance_aaa-remote-exec       = [
  "sudo -u root apt-get update",
  "sudo -u root apt-get install -y ca-certificates curl gnupg lsb-release git python3-pip unzip"
]

# Instances (GPU)
aaa_instance_bbb-name              = "gpu"
aaa_instance_bbb-image             = "ubuntu-2004-lts"
aaa_instance_bbb-root_disk_size    = 25
aaa_instance_bbb-root_disk_type    = "pd-ssd"
aaa_instance_bbb-count             = 0
aaa_instance_bbb-desired_status    = "RUNNING"
aaa_instance_bbb-tags              = ["gpu", "all"]
aaa_instance_bbb-region            = "europe-central2"
aaa_instance_bbb-zones             = "europe-central2-a"
aaa_instance_bbb-cidr              = "10.100.1.0/24"
aaa_instance_bbb-type              = "a2-highgpu-1g"
aaa_instance_bbb-preemptible       = false
aaa_instance_bbb-automatic_restart = true
