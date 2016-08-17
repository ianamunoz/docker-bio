
.PHONY: all build test clean

all: build

build:
	$(MAKE) -C centos/7 build
	$(MAKE) -C bowtie/1.1.1 build

test:
	$(MAKE) -C centos/7 test
	$(MAKE) -C bowtie/1.1.1 test

clean:
	$(MAKE) -C centos/7 clean
	$(MAKE) -C bowtie/1.1.1 clean

