all: build

build:
	docker build --rm -t sglim2/hmmer-3.1b2 .

# docker login required for push
push:
	docker push sglim2/hmmer-3.1b2

run:
	docker run -it sglim2/hmmer-3.1b2 bash

test:
	docker run -i sglim2/hmmer-3.1b2 bash < tests.sh
