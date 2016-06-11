all: build

build:
	docker build --rm -t sglim2/bowtie2-2.2.9 .

# docker login required for push
push:
	docker push sglim2/bowtie2-2.2.9

run:
	docker run -i -t -d sglim2/bowtie2-2.2.9 /bin/bash
	docker ps
