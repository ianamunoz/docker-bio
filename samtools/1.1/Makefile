all: build

build:
	docker build --rm -t sglim2/samtools-1.1 .

# docker login required for push
push:
	docker push sglim2/samtools-1.1

run:
	docker run -i -t -d sglim2/samtools-1.1 /bin/bash
	docker ps
