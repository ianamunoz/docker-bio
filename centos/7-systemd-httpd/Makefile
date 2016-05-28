all: build 

build:
	docker build --rm -t sglim2/centos7-systemd-httpd .

# docker login required for push
push:
	docker push sglim2/centos7-systemd-httpd

run:
	docker run -it --privileged -v /tmp/$(mktemp -d):/run -v /sys/fs/cgroup:/sys/fs/cgroup:ro sglim2/centos7-systemd-httpd
	docker ps
	#docker exec -it [container] /bin/bash
