all: build

build:
	docker build --rm -t sglim2/python3-3.4.3 .

# docker login required for push
push:
	docker push sglim2/python3-3.4.3

run:
	docker run -i -t -d sglim2/python3-3.4.3 /bin/bash
	docker ps
