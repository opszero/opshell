FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y python-pip wget curl unzip zsh build-essential gnupg
RUN pip install --upgrade pip

# AWS
RUN pip install awscli

# GCP
ENV CLOUD_SDK_REPO=""
RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk-xenial main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN apt-get update && apt-get install -y google-cloud-sdk

# Terraform
RUN wget -O terraform.zip https://releases.hashicorp.com/terraform/0.10.2/terraform_0.10.2_linux_amd64.zip
RUN unzip -a terraform.zip
RUN mv terraform /usr/bin/terraform

# Packer
RUN wget -O packer.zip https://releases.hashicorp.com/packer/1.0.4/packer_1.0.4_linux_amd64.zip
RUN unzip -a packer.zip
RUN mv packer /usr/bin/packer

CMD /bin/zsh