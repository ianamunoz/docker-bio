FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Software:             bowtie
# Software Version:     1.1.2
# Software Website:     https://github.com/BenLangmead/bowtie
# Description:          bowtie
##############################################################

ENV APP_NAME=bowtie
ENV VERSION=v1.1.2
ENV GIT=https://github.com/BenLangmead/bowtie.git
ENV DEST=/software/applications/$APP_NAME/
ENV BOWTIE_INDEXES=$DEST/$VERSION/indexes
ENV PATH=$DEST/$VERSION/:$PATH

RUN git clone $GIT ; \
    cd $APP_NAME ; \
    git checkout tags/$VERSION ; \
    make -j ; \
    mkdir -p /usr/share/licenses/$APP_NAME-$VERSION ; \
    cp LICENSE /usr/share/licenses/$APP_NAME-$VERSION/ ; \
    cd ../ ;  \
    mkdir -p $DEST ; \
    mv $APP_NAME $DEST/$VERSION
CMD ["/bin/bash"]

