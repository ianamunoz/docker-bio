all: build

build:
	docker build --rm -t sglim2/ruby-2.3.1 .

# docker login required for push
push:
	docker push sglim2/ruby-2.3.1

run:
	docker run -i -t -d sglim2/ruby-2.3.1 /bin/bash
	docker ps
