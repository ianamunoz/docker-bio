all: build

build:
	docker build --rm -t sglim2/qiime-1.9.1 .

# docker login required for push
push:
	docker push sglim2/qiime-1.9.1

run:
	docker run -i -t -d sglim2/qiime-1.9.1 /bin/bash
	docker ps
