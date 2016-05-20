all: build

build:
	docker build --rm -t sglim2/trinityrnaseq-2.2.0 .

# docker login required for push
push:
	docker push sglim2/trinityrnaseq-2.2.0

run:
	docker run -i -t -d sglim2/trinityrnaseq-2.2.0 /bin/bash
	docker ps
