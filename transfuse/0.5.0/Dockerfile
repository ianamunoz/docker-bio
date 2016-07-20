FROM sglim2/ruby-2.3.1
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Software:             transfuse
# Software Version:     v0.5.0
# Software Website:     https://github.com/cboursnell/transfuse
# Description:          Transfuse intelligently merges your multiple de novo transcriptome assemblies.
##############################################################

ENV APP_NAME=transfuse
ENV VERSION=v0.5.0
ENV GIT=https://github.com/cboursnell/transfuse
ENV DEST=/software/applications/$APP_NAME/

RUN yum install -y autoconf automake ; \
    curl -L -o v1.11.1.tar.gz  https://github.com/torognes/vsearch/archive/v1.11.1.tar.gz ; \
    tar xzf v1.11.1.tar.gz ; \
    cd vsearch-1.11.1 ; \
    ./autogen.sh ; \
    ./configure ; \
    make ; \
    make install ; \
    cd .. ; \
    rm -rf vsearch-1.11.1  v1.11.1.tar.gz ; \
    git clone $GIT ; \
    cd $APP_NAME ; \
    git checkout tags/$VERSION ; \
    gem build *spec ; \
    gem install *gem ; \
    transrate --install-deps read ; \
    cd ../ ;  \
    rm -rf $APP_NAME
CMD ["/bin/bash"]

