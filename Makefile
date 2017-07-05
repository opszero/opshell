build:
	docker build -t opszero/opshell .

run: build
	docker run -it opszero/opshell