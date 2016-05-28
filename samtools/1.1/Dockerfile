FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Dockerfile Version:   0.1
# Software:             samtools
# Software Version:     1.1
# Software Website:     https://github.com/samtools/samtools/archive/1.1.tar.gz
# Description:          samtools
##############################################################

ENV APP_NAME=samtools
ENV VERSION=1.1
ENV GIT=https://github.com/BenLangmead/samtools.git
ENV DEST=/software/$APP_NAME/

RUN yum install -y zlib-devel \
                   ncurses-devel 
RUN curl -L -o htslib-1.1.tar.gz https://github.com/samtools/htslib/archive/1.1.tar.gz ; \
    curl -L -o samtools-1.1.tar.gz https://github.com/samtools/samtools/archive/1.1.tar.gz 
RUN tar xzf htslib-1.1.tar.gz ; \ 
    tar xzf samtools-1.1.tar.gz ; \
    mv htslib-1.1 htslib ; \ 
    cd samtools-1.1 ; \
    make -j HTSDIR=../htslib ; \
    make prefix=$DEST/$VERSION install ; \
    cd ../ ; \
    rm -rf htslib samtools-1.1 

CMD ["/bin/bash"]

