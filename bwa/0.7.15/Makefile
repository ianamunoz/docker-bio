all: build

build:
	docker build --rm -t sglim2/bwa-0.7.15 .

# docker login required for push
push:
	docker push sglim2/bwa-0.7.15

run:
	docker run -it sglim2/bwa-0.7.15 bash

test:
	docker run -i sglim2/bwa-0.7.15 bash < tests.sh
