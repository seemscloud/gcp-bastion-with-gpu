# Configuration
project_id = "core-337701"
region     = "us-central1"
prefix     = "a"

# Keys
terraform_user        = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCoip6WrI8ac9fV3M3zCQ6z11kkcSbXl72RZH9lvcUMrn6x069FHVkYxI9DvZT2M3bVSMVYdiABkhKpOCVCtaKYpfl47zKQwOpQsaIX+17HOUKFMAKNpFTIcItfQUU9YV/1xlnYLO96X/3NZ1fWiArEMCxWP0rQKq0rbfiZcwOs7vmMqUepQv5Hgn7Ug4r2NkQMcIQHWeEmY0zKIVb7nYU09YrT7gMt1w0CMlI1ZLcW2w++GT9wNByFRXCxccVOx+JUkMDYEKCvlcsJU8sjaI3K0+VNYrfnArKIMaErGk5TitSnZ0rJ64yggnIh0w30nTq+MPN3DSMsytVKreL2MK44UxSMZBsOYlEJCVmGOYesiQaAgxDRoma4jcQxVZrDYdSH33S7v9LDaJXWnsp5+g6SZ0/TQnwuyynhgDdArzH5ABw88YKmvwSt11elvpXxGnud9dX69X6byUuoxpLKS4usuYQVhZAZ025to0LOlkL6HHhcazVv8PhQXmCDvQDNJ0s=
EndOfMessage

# Network
aaa_network_aaa-name = "network"

# Instance (Bastion)
aaa_instance_aaa-name           = "bastion"
aaa_instance_aaa-image          = "ubuntu-2004-lts"
aaa_instance_aaa-root_disk_size = 10
aaa_instance_aaa-desired_status = "RUNNING"
aaa_instance_aaa-tags           = ["bastion", "all"]
aaa_instance_aaa-region         = "us-central1"
aaa_instance_aaa-zones          = "us-central1-a"
aaa_instance_aaa-cidr           = "10.100.255.0/24"
aaa_instance_aaa-type           = "e2-highcpu-2"
aaa_instance_aaa-preemptible    = false

# Instances (GPU)
aaa_instance_bbb-name           = "gpu"
aaa_instance_bbb-image          = "ubuntu-2004-lts"
aaa_instance_bbb-root_disk_size = 100
aaa_instance_bbb-count          = 1
aaa_instance_bbb-desired_status = "RUNNING"
aaa_instance_bbb-tags           = ["gpu", "all"]
aaa_instance_bbb-region         = "us-central1"
aaa_instance_bbb-zones          = "us-central1-a"
aaa_instance_bbb-cidr           = "10.100.1.0/24"
aaa_instance_bbb-type           = "a2-highgpu-4g"
aaa_instance_bbb-preemptible    = false
