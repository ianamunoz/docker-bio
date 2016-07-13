all: build

build:
	docker build --rm -t sglim2/python3-3.5.2 .

# docker login required for push
push:
	docker push sglim2/python3-3.5.2

run:
	docker run -i -t -d sglim2/python3-3.5.2 /bin/bash
	docker ps
