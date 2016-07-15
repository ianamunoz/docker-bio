FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Software:             hmmer
# Software Version:     3.1b2
# Software Website:     http://hmmer.org/
# Description:          biosequence analysis using profile hidden Markov models
##############################################################

ENV APP_NAME=hmmer
ENV VERSION=3.1b2
ENV DEST=/software/applications/$APP_NAME/
ENV PATH=$DEST/$VERSION/bin:$PATH
ENV MANPATH=$DEST/$VERSION/share/man:$MANPATH

RUN curl -L -o hmmer-$VERSION.tar.gz http://eddylab.org/software/hmmer3/3.1b2/hmmer-3.1b2.tar.gz ; \
    tar xzf hmmer-$VESION.tar.gz ; \
    cd hmmer-$VERSION ; \
    ./configure --prefix=$DEST/$VERSION ; \
    make -j ; \
    make install ; \
    mkdir -p /usr/share/licenses/$APP_NAME-$VERSION ; \
    cp LICENSE /usr/share/licenses/$APP_NAME-$VERSION/ ; \
    cd ../ ;  \
    rm -rf hmmer-$VESION.tar.gz hmmer-$VESION ; 
CMD ["/bin/bash"]

