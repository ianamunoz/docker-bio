all: build 

build:
	docker build --rm -t sglim2/centos7-systemd-httpd .

# docker login required for push
push:
	docker push sglim2/centos7-systemd-httpd

run:
	docker run -ti -v /tmp/$(mktemp -d):/run -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 sglim2/centos7-systemd-httpd
	docker ps
