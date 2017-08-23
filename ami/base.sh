apt-get update -y
apt-get install -y python-pip wget curl unzip zsh build-essential gnupg jq
pip install --upgrade pip


# AWS
pip install awscli

# GCP
echo "deb http://packages.cloud.google.com/apt cloud-sdk-xenial main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
apt-get update && apt-get install -y google-cloud-sdk

# Terraform
wget -O terraform.zip https://releases.hashicorp.com/terraform/0.10.2/terraform_0.10.2_linux_amd64.zip
unzip -a terraform.zip
mv terraform /usr/bin/terraform

# Packer
wget -O packer.zip https://releases.hashicorp.com/packer/1.0.4/packer_1.0.4_linux_amd64.zip
unzip -a packer.zip
mv packer /usr/bin/packer

# Kubernetes Kops
wget https://github.com/kubernetes/kops/releases/download/1.7.0/kops-linux-amd64
chmod +x kops-linux-amd64
mv kops-linux-amd64 /usr/bin/kops

# Kubernetes kubectl
wget https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/bin/kubectl
