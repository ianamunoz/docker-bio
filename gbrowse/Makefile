all: build

build:
	docker build --rm -t sglim2/gbrowse .

# docker login required for push
push:
	docker push sglim2/gbrowse

run:
	docker run -i -t -d sglim2/gbrowse /bin/bash
	docker ps
