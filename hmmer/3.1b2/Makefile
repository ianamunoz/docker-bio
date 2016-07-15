all: build

build:
	docker build --rm -t sglim2/hmmer-3.1b2 .

# docker login required for push
push:
	docker push sglim2/hmmer-3.1b2

run:
	docker run -i -t -d sglim2/hmmer-3.1b2 /bin/bash
	docker ps
