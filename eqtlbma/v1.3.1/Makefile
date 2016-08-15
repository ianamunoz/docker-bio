all: build

build:
	docker build --rm -t sglim2/eqtlbma-1.3.1 .

# docker login required for push
push:
	docker push sglim2/eqtlbma-1.3.1

run:
	docker run -it sglim2/eqtlbma-1.3.1 bash

test:
	docker run -i sglim2/eqtlbma-1.3.1 bash < tests.sh
