all: build

build:
	docker build --rm -t sglim2/bowtie-1.1.1 .

# docker login required for push
push:
	docker push sglim2/bowtie-1.1.1

run:
	docker run -i -t -d sglim2/bowtie-1.1.1 /bin/bash
	docker ps
