FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Software:             python3
# Software Version:     3.5.2
# Software Website:     www.python.org
# Description:          python3
##############################################################

ENV APP_NAME=python3
ENV VERSION=3.5.2
ENV DEST=/software/applications/$APP_NAME/
ENV PATH=$DEST/$VERSION/bin:$PATH
ENV PYTHONPATH=$DEST/$VERSION/lib/python3.5
ENV MANPATH=$DEST/$VERSION/share/man:$MANPATH

RUN yum install -y \
       bzip2-devel \
       openssl-devel \
       readline-devel \
       sqlite-devel  \
       tk-devel  \
       zlib-devel ; \
    curl -L -o Python-$VERSION.tgz https://www.python.org/ftp/python/$VERSION/Python-$VERSION.tgz ; \
    tar xvf Python-$VERSION.tgz ; \
    cd Python-$VERSION ; \
    ./configure --prefix=$DEST/$VERSION ; \
    make -j ; \
    make install ; \
    cd ../ ;  \
    rm -rf Python-$VERSION* ; \
    python3 -m ensurepip --upgrade ; \
    pip3 install --upgrade pip
CMD ["/bin/bash"]

