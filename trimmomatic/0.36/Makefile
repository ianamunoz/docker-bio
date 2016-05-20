all: build

build:
	docker build --rm -t sglim2/trimmomatic-0.36 .

# docker login required for push
push:
	docker push sglim2/trimmomatic-0.36

run:
	docker run -i -t -d sglim2/trimmomatic-0.36 /bin/bash
	docker ps
