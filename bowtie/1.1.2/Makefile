all: build

build:
	docker build --rm -t sglim2/bowtie-1.1.2 .

# docker login required for push
push:
	docker push sglim2/bowtie-1.1.2

run:
	docker run -it sglim2/bowtie-1.1.2 bash

test:
	docker run -i sglim2/bowtie-1.1.2 bash < tests.sh
