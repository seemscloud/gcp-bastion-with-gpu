# Configuration
project_id = "core-337701"
region     = "us-central1"
prefix     = "a"

# Keys
terraform_user        = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8YirW0OKPLjIlpGAdzM9kKb5rUcq/kOjSMRUYiaTgw0Hb5vWNZ5QQHpgXf1RGaAyD1jBhFe4ppzY//HiPKjXByqXTYzVy7ghhUUCuzNDOp8ykHQ3OBWeOMLUBvRCk+yMdlgo+gAs19/WNYZNz6YEWD1yqbXZ2eYUQHpoUqAxLnOtrIOCDiaqEKLCmKwUmpt+dcla6iy7abnYjI/0AgyL7fHgI26yH0EmygFpvmWvM2SOnFx9Ivoe7ypd786gUF5fTHjI5Z7SQGUgZjuQ5IvNibdklK822eRefqzblDTCGXh1b0jGMP+InDHlaTniczuAkbV0LhGaKDssrsooQbZFY3u3La30E6Zz3rlAJ7HIhXxy6dIz+oUpVHCEYHzTegWwEbAti9KhLYVTA4m3WiyLLGlzgXY7j8DL5gwge8R33zjVunQ96l22Cg9DJiElMStrEsUpdfxd5qEqQpmnY2WnQ7XR1DMgSQRuaKizv3o0WTpgqO4lJBSz2mE4ttZwLw98=
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
  "sudo -u root find /root -mindepth 1 -maxdepth 1 -exec rm -rf {} \\;",
  "sudo -u root git init /root",
  "sudo -u root git --git-dir=/root/.git --work-tree=/root remote add origin https://github.com/theanotherwise/dotfiles.git",
  "sudo -u root git --git-dir=/root/.git --work-tree=/root fetch --all",
  "sudo -u root git --git-dir=/root/.git --work-tree=/root checkout linux",
  "rm -f .bashrc",
  "git init ~/",
  "git remote add origin https://github.com/theanotherwise/dotfiles.git",
  "git fetch --all",
  "git checkout linux",
  "sudo -u root usermod -a -G docker terraform",
  "sudo -u root pip3 install docker-compose"
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