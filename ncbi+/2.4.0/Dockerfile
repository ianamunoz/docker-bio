FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Software:             ncbi-blast+
# Software Version:     2.4.0
# Software Website:     http://blast.ncbi.nlm.nih.gov
# Description:          ncbi-blast+
##############################################################

ENV APP_NAME=ncbi-blast+
ENV VERSION=2.4.0
ENV DEST=/software/applications/$APP_NAME
ENV PATH=$DEST/$VERSION/bin:$PATH

RUN curl -L -o ncbi-blast-$VERSION+-src.tar.gz http://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-$VERSION+-src.tar.gz ; \
    tar xzf ncbi-blast-$VERSION+-src.tar.gz ; \
    cd ncbi-blast-$VERSION+-src/c++ ; \ 
    ./configure --prefix=$DEST/$VERSION ; \ 
    make -j ; \
    make install ; \
    cd ../../ ; \
    rm -rf ncbi-blast-$VERSION+-src*
CMD ["/bin/bash"]

