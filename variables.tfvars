# Configuration
project_id = "core-337701"
region     = "us-central1"
prefix     = "a"

# Keys
terraform_user        = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCkuj+CeqrJyLSCMgtCPcFN+4+zRQw4LCziEAuvDEdhyiix4DbZkBcL1fsgHeYKsY52wVga9zYF600m2h3HMNxi7pLlZKexcuJo7bJuB+fRXkSrevscqbW1NWXavRZZZ7DSun1DENDLAtlXlOPKITz9RdOg5Ook4Q3d50VNH2yrNK5Tma9ZAs7gNzKjrIaWMwUC0Rl5+QUQ98aVZUJg/HFqwrpgJkZH5iHP18qc/Q4wpmYO0AjsmiWSYYUYitMEkQF7ArYXqEAQQOOIdTzZBL2x3AHgeyUYeMJxgr4MM/gFqg0e0IG7Ss/tSPKN7N1DP96Eb5pI3uWJ2CptqPcCtmmBnSu3XH2nvBZqRzo0q/jxjRRtTN+E5kpnlL+5/OWx7CsAh+cdtRqj1dEk6TB2aKGWSSzCM+NvR6C9ZWkWrcEjNB2Vz78m1UfGXjdjnM8WUqBM4Z3lX012hJMZ6VEPLexYZgRdfx19AiwxIoDL6XPSGAOcN32fIdx0cqYFX0LAudk=
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
aaa_instance_aaa-region            = "us-central1"
aaa_instance_aaa-zones             = "us-central1-a"
aaa_instance_aaa-cidr              = "10.100.255.0/24"
aaa_instance_aaa-type              = "e2-highcpu-8"
aaa_instance_aaa-preemptible       = false
aaa_instance_aaa-automatic_restart = true
aaa_instance_aaa-remote-exec       = [
  "sudo -u root apt-get update",
  "sudo -u root apt-get install -y ca-certificates curl gnupg lsb-release git python3-pip unzip",
  "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo -u root gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg",
  "echo \"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable\" | sudo -u root tee /etc/apt/sources.list.d/docker.list > /dev/null",
  "sudo -u root apt-get update",
  "sudo -u root apt-get install -y docker-ce docker-ce-cli containerd.io",
  "sudo -u root usermod -a -G docker terraform",
  "sudo -u root python3 -m pip install --upgrade pip",
  "sudo -u root pip3 install docker-compose",
  "sudo -u root apt-get autoremove --purge snapd -y",
  "sudo -u root find /root -mindepth 1 -maxdepth 1 -not \\( -path /root/.ssh \\) -exec rm -rf {} \\;",
  "sudo -u root git init /root",
  "sudo -u root git --git-dir=/root/.git --work-tree=/root remote add origin https://github.com/theanotherwise/dotfiles.git",
  "sudo -u root git --git-dir=/root/.git --work-tree=/root fetch --all",
  "sudo -u root git --git-dir=/root/.git --work-tree=/root checkout linux",
  "DOT_HOME=\"/root\" INSTALL_PORTABLE=\"yes\" sudo -E -u root /bin/bash /root/.dotfiles/initialize.sh",
  "find ~/ -mindepth 1 -maxdepth 1 -not \\( -path ~/.ssh \\) -exec rm -rf {} \\;",
  "git init ~/",
  "git remote add origin https://github.com/theanotherwise/dotfiles.git",
  "git fetch --all",
  "git checkout linux",
  "INSTALL_PORTABLE=\"yes\" /bin/bash ~/.dotfiles/initialize.sh"
]

# Instances (GPU)
aaa_instance_bbb-name              = "gpu"
aaa_instance_bbb-image             = "ubuntu-2004-lts"
aaa_instance_bbb-root_disk_size    = 25
aaa_instance_bbb-root_disk_type    = "pd-ssd"
aaa_instance_bbb-count             = 0
aaa_instance_bbb-desired_status    = "RUNNING"
aaa_instance_bbb-tags              = ["gpu", "all"]
aaa_instance_bbb-region            = "us-central1"
aaa_instance_bbb-zones             = "us-central1-a"
aaa_instance_bbb-cidr              = "10.100.1.0/24"
aaa_instance_bbb-type              = "a2-highgpu-1g"
aaa_instance_bbb-preemptible       = false
aaa_instance_bbb-automatic_restart = true
