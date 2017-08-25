build:
	packer build image.json

run: build
	docker run -it opszero/opshell

docker:
	packer build -only=docker image.json

aws-marketplace:
	# Build Image with Packer for AWS Marketplace
	AWS_REGION=us-east-1 \
	AWS_ACCESS_KEY_ID=$(shell aws configure get opszero.aws_access_key_id) \
	AWS_SECRET_ACCESS_KEY=$(shell aws configure get opszero.aws_secret_access_key) \
	packer build -only=amazon-ebs image.json

