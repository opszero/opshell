<img src="http://assets.opszero.com.s3.amazonaws.com/images/Opshell.png" width="200px" />

# Opshell

Docker image intended to make it easier to do operations work against
multiple environments and clients.

 - Cloud
    - AWS CLI
    - Google Cloud SDK
    - Microsoft Azure SDK
 - DevOps
    - Ansible
    - Chef
    - Docker
    - Packer
    - Puppet
    - Terraform
    - Vagrant
 - Tools
    - CSVKit
    - Git
    - Mercurial
    - MySQL Client
    - Nmap
    - PostgreSQL Client
    - Redis Tools
    - SQLite
    - SoftLayer
    - Sysdig
    - lsof

# Usage

## AWS AMI

```
VPC_ID=vpc-aaaaaaaa \
SUBNET_ID=subnet-aaaaaaaa \
AWS_REGION=us-west-2 \
AWS_ACCESS_KEY_ID=$(aws configure get picnichealth.aws_access_key_id) \
AWS_SECRET_ACCESS_KEY=$(aws configure get picnichealth.aws_secret_access_key) \
packer build -only=amazon-ebs image.json
```


## Docker

```
docker pull opszero/opshell
```

opshell requires `Docker` to run. When run it mounts the `$CLIENT_DIR` as
`$HOME` and mounts the `$WORK_DIR` under `/work`

```
opshell $CLIENT_DIR $WORK_DIR
```

## Building All Images

Build using Packer.

```
packer build image.json
```

# Supported Images

 - [AWS Marketplace](https://aws.amazon.com/marketplace/pp/B075CLZTFG?qid=1504899558989&sr=0-2&ref_=srh_res_product_title)

# Project by opsZero

<a href="https://www.opszero.com"><img src="http://assets.opszero.com.s3.amazonaws.com/images/opszero_11_29_2016.png" width="300px"/></a>

This project is brought to you by [opsZero](https://www.opszero.com) we
provide DevOps and Cloud Infrastructure as a Service for Startups. If you
need help with your infrastructure reach out.
