FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Software:             -
# Software Version:     -
# Software Website:     -
# Description:          Kille group full pipeline of software
##############################################################

# MODULES
RUN yum install -y environment-modules ; \
    grep "^/software/modules/" /usr/share/Modules/init/.modulespath  || echo /software/modules >> /usr/share/Modules/init/.modulespath ; \
    . /etc/profile.d/modules.sh 

# SAMTOOLS
ENV APP_NAME=samtools
ENV VERSION=1.1
ENV GIT=https://github.com/BenLangmead/samtools.git
ENV DEST=/software/applications/$APP_NAME/
ENV MOD_DEST=/software/modules/$APP_NAME/

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
COPY $APP_NAME-$VERSION.module $MOD_DEST/$VERSION

CMD ["/bin/bash"]

