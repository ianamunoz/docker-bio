all: build

build:
	docker build --rm -t sglim2/python2-2.7.11 .

# docker login required for push
push:
	docker push sglim2/python2-2.7.11

run:
	docker run -i -t -d sglim2/python2-2.7.11 /bin/bash
	docker ps
