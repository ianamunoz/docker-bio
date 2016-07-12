all: build

build:
	docker build --rm -t sglim2/ncbi-blast-2.4.0+ .

# docker login required for push
push:
	docker push sglim2/ncbi-blast-2.4.0+

run:
	docker run -i -t -d sglim2/ncbi-blast-2.4.0+ /bin/bash
	docker ps
