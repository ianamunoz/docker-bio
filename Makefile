

subdirs = centos/7 \
          bowtie/1.1.1 \
          bowtie/1.1.2 \
          bwa/0.7.15 \
          eqtlbma/v1.3.1 \
          groups/kille/complete \
          hmmer/3.1b2 \
#          ncbi+/2.4.0 \
          samtools/1.1 \
          samtools/1.3.1

.PHONY: $(subdirs)

all: $(subdirs)
build: $(subdirs)
test: $(subdirs)
clean: $(subdirs)

$(subdirs):
	$(MAKE) -C $@  $(MAKECMDGOALS)
	

