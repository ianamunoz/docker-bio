FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>
LABEL Vendor="sglim2"
LABEL License=GPLv2

##############################################################
# Dockerfile Version:   0.1
# Software:             bowtie
# Software Version:     1.1.2
# Software Website:     https://github.com/BenLangmead/bowtie
# Description:          bowtie
##############################################################

ENV APP_NAME=bowtie
ENV VERSION=v1.1.2
ENV GIT=https://github.com/BenLangmead/bowtie.git
ENV DEST=/software/$APP_NAME/

RUN git clone https://github.com/BenLangmead/bowtie.git
RUN cd $APP_NAME && \
    git checkout tags/$VERSION && \
    make -j && \
    cd ../ &&  \
    mkdir -p $DEST && \
    mv $APP_NAME $DEST/$VERSION
CMD ["/bin/bash"]

