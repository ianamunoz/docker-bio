all: build

build:
	docker build --rm -t sglim2/gbrowse-2.555 .

# docker login required for push
push:
	docker push sglim2/gbrowse-2.555

run:
	docker run -i -t -d sglim2/gbrowse-2.555 /bin/bash
	docker ps
