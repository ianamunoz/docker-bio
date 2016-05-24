all: build

build:
	docker build --rm -t sglim2/maker-2.31.8 .

# docker login required for push
push:
	docker push sglim2/maker-2.31.8

run:
	docker run -i -t -d sglim2/maker-2.31.8 /bin/bash
	docker ps
