echo $(env)
if [ $PACKER_BUILDER_TYPE = "docker" ]
then
    apt-get update -y && apt-get install -y sudo
fi

sudo apt-get update -y
sudo apt-get install -y apt-transport-https \
                        build-essential \
                        curl \
                        git-core \
                        gnupg \
                        jq \
                        lsof \
                        mercurial \
                        mysql-client \
                        nmap \
                        postgresql-client \
                        python-pip \
                        redis-cli \
                        sysdig \
                        sudo \
                        tmux \
                        unzip \
                        wget \
                        zsh

sudo pip install --upgrade pip

# AWS
sudo pip install awscli csvkit

# GCP
echo "deb http://packages.cloud.google.com/apt cloud-sdk-xenial main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install -y google-cloud-sdk

# Azure
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | sudo tee /etc/apt/sources.list.d/azure-cli.list
sudo apt-key adv --keyserver packages.microsoft.com --recv-keys 417A0893
sudo apt-get update && sudo apt-get install -y azure-cli

# Vagrant
wget -O vagrant.deb "https://releases.hashicorp.com/vagrant/1.9.8/vagrant_1.9.8_x86_64.deb"
sudo deb -i ./vagrant.deb
rm vagrant.deb

# Terraform
wget -O terraform.zip https://releases.hashicorp.com/terraform/0.10.2/terraform_0.10.2_linux_amd64.zip
unzip -a terraform.zip
sudo mv terraform /usr/local/bin/terraform

# Packer
wget -O packer.zip https://releases.hashicorp.com/packer/1.1.0/packer_1.1.0_linux_amd63.zip
unzip -a packer.zip
sudo mv packer /usr/local/bin/packer

# Kubernetes Kops
wget https://github.com/kubernetes/kops/releases/download/1.7.0/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops

# Kubernetes kubectl
wget https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl
