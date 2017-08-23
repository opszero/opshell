build:
	packer build image.json

run: build
	docker run -it opszero/opshell
