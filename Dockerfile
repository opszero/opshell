FROM ubuntu

RUN apt-get update -y
RUN apt-get install -y python-pip wget unzip zsh build-essential
RUN pip install awscli

RUN wget -O terraform.zip https://releases.hashicorp.com/terraform/0.9.9/terraform_0.9.9_linux_amd64.zip
RUN unzip -a terraform.zip
RUN mv terraform /usr/bin/terraform

RUN wget -O packer.zip https://releases.hashicorp.com/packer/1.0.4/packer_1.0.4_linux_amd64.zip
RUN unzip -a packer.zip
RUN mv packer /usr/bin/packer

CMD /bin/zsh