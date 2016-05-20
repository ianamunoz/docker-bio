all: build 

build:
	docker build --rm -t sglim2/centos7 .

# docker login required for push
push:
	docker push sglim2/centos7

run:
	docker run -i -t -d sglim2/centos7 /bin/bash
	docker ps
