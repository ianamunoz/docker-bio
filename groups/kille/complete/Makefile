all: build

build:
	docker build --rm -t sglim2/kille-complete .

# docker login required for push
push:
	docker push sglim2/kille-complete

run:
	docker run -i -t -d sglim2/kille-complete /bin/bash
	docker ps
