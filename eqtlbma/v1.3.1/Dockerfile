FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Software:             eqtlbma
# Software Version:     1.3.1
# Software Website:     https://github.com/timflutre/eqtlbma
# Description:          Package to detect eQTLs
##############################################################

ENV APP_NAME=eqtlbma
ENV VERSION=v1.3.1
ENV GIT=https://github.com/timflutre/eqtlbma.git
ENV DEST=/software/applications/$APP_NAME/
ENV PATH=$DEST/$VERSION/bin:$PATH
ENV INFOPATH=$DEST/$VERSION/share/info:$INFOPATH

RUN yum install -y \
       autoconf \
       automake \
       gsl-devel \
       libtool \
       texinfo  \
       zlib-devel ; \
    git clone $GIT ; \
    cd $APP_NAME ; \
    git checkout tags/$VERSION ; \
    autoreconf -i ; \
    ./configure --prefix=$DEST/$VERSION ; \
    make -j ; \
    make install ; \
    mkdir -p /usr/share/licenses/$APP_NAME-$VERSION ; \
    cp COPYING /usr/share/licenses/$APP_NAME-$VERSION/ ; \
    cd ../ ;  \
    rm -rf $APP_NAME
CMD ["/bin/bash"]

