FROM ubuntu

RUN apt-get update -y
RUN apt-get install -y python-pip wget unzip
RUN pip install awscli

RUN wget -O terraform.zip https://releases.hashicorp.com/terraform/0.9.9/terraform_0.9.9_linux_amd64.zip
RUN unzip -a terraform.zip
RUN mv terraform /usr/bin/terraform

RUN wget -O packer.zip https://releases.hashicorp.com/packer/1.0.2/packer_1.0.2_linux_amd64.zip
RUN unzip -a packer.zip
RUN mv packer /usr/bin/packer