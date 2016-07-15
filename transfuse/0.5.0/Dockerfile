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

RUN git clone $GIT ; \
    cd $APP_NAME ; \
    git checkout tags/$VERSION ; \
    gem build *spec ; \
    gem install *gem ; \
    transrate --install-deps read ; \
    cd ../ ;  \
    rm -rf $APP_NAME
CMD ["/bin/bash"]

