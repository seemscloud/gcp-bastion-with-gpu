# Configuration
project_id = "core-337701"
region     = "us-central1"
prefix     = "a"

# Keys
terraform_user        = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCgGL35b5EDDGMUXS3GGQo/BaRhXJM3RGrs0IBxqA1172EGMS6YoFuFzbhK46SafrT1eoBWKmz3nKj2rla3rKdzN0JnYVqK/ITfJCQ6//DX2aoGjxHbqFVl8+L58+yGcZdeT6XrHaeJ4piybhkrpu7HkN/kL3WQZ4VaYPJ8ojlOo9g7YeFT31ABGXAtaS97frZ+ok1CWm6YzGqhYynciJMdOR4RMjngQ+yPh8ssyGV3ZJSDnzmhjYoJLOhc3CAJbatMy6N7yjTGxK++VjWVgl90TlLbC077nyhU7FNxGX2CsafvM9pSNjb8pJ5ckM0uPlrrKcKDuVcqCn8UaHRFXRES4n+UisouaGImDssn3d3Et8xm1HfHRpGoYrlFdP3W64s0AopCRVZJH35iDmqrBBxaN6ADDuGO+eJBlcquK8QnTiUFaPP9YfIVlNxkXh7qMvDUfVvUgNXLcXb3rRFsicePR0ua9pspRP4V4at8y2qUk1wZz4qAM8jiTZyEkKUkuW8=
EndOfMessage

# Network
aaa_network_aaa-name = "network"

# Instance (Bastion)
aaa_instance_aaa-name           = "bastion"
aaa_instance_aaa-image          = "ubuntu-2004-lts"
aaa_instance_aaa-root_disk_size = 100
aaa_instance_aaa-tags           = ["bastion", "all"]
aaa_instance_aaa-region         = "us-central1"
aaa_instance_aaa-zones          = "us-central1-a"
aaa_instance_aaa-cidr           = "10.100.255.0/24"
aaa_instance_aaa-type           = "e2-highcpu-2"
aaa_instance_aaa-preemptible    = false

# Instances (GPU)
aaa_instance_bbb-name           = "gpu"
aaa_instance_bbb-image          = "ubuntu-2004-lts"
aaa_instance_bbb-root_disk_size = 10
aaa_instance_bbb-count          = 1
aaa_instance_bbb-tags           = ["gpu", "all"]
aaa_instance_bbb-region         = "us-central1"
aaa_instance_bbb-zones          = "us-central1-a"
aaa_instance_bbb-cidr           = "10.100.1.0/24"
aaa_instance_bbb-type           = "a2-highgpu-4g"
aaa_instance_bbb-preemptible    = false
