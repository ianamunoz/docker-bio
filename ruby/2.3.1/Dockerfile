FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Software:             ruby
# Software Version:     2.3.1
# Software Website:     
# Description:          ruby
##############################################################

ENV APP_NAME=ruby
ENV VERSION=2.3.1
ENV DEST=/software/applications/$APP_NAME/
ENV PATH=$DEST/$VERSION/bin:$PATH
ENV PYTHONPATH=$DEST/$VERSION/lib/python2.7
ENV MANPATH=$DEST/$VERSION/share/man:$MANPATH

RUN yum install -y zlib zlib-devel openssl openssl-devel readline readline-devel ; \
    curl -L -o ruby-2.3.1.tar.gz https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz ; \
    tar xvf ruby-2.3.1.tar.gz ; \
    cd ruby-$VERSION ; \
    ./configure --prefix=$DEST/$VERSION ; \
    make -j ; \
    make install ; \
    cd ../ ;  \
    rm -rf ruby-$VERSION ;  
CMD ["/bin/bash"]

