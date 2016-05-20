all: build

build:
	docker build --rm -t sglim2/centos7-systemd .

# docker login required for push
push:
	docker push sglim2/centos7-systemd

run:
	docker run -i -t -d sglim2/centos7-systemd /bin/bash
	docker ps
