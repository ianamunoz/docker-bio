
.PHONY: all build test deploy

all: build

build:
	$(MAKE) -C centos/7 build

test:
	$(MAKE) -C centos/7 test
	$(MAKE) -C centos/7 clean

deploy:
	$(MAKE) -C centos/7 deploy
