all: build

build:
	docker build --rm -t sglim2/bwa-0.7.15 .

# docker login required for push
push:
	docker push sglim2/bwa-0.7.15

run:
	docker run -i -t -d sglim2/bwa-0.7.15 /bin/bash
	docker ps
