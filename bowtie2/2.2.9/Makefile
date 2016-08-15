all: build

build:
	docker build --rm -t sglim2/bowtie2-2.2.9 .

# docker login required for push
push:
	docker push sglim2/bowtie2-2.2.9

run:
	docker run -it sglim2/bowtie2-2.2.9 bash

test:
	docker run -i sglim2/bowtie2-2.2.9 bash  < tests.sh
