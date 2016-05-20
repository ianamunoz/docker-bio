FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Dockerfile Version:   0.1
# Software:             trimmomatic
# Software Version:     0.36
# Software Website:     http://www.usadellab.org
# Description:          A flexible read trimming tool for Illumina NGS data
##############################################################

ENV APP_NAME=trimmomatic
ENV VERSION=0.36
ENV DEST=/software/$APP_NAME/

RUN yum install -y unzip
RUN curl -L -o Trimmomatic-0.36.zip \
       http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.36.zip ; \
    unzip Trimmomatic-0.36.zip ; \ 
    mkdir -p $DEST ; \
    mv Trimmomatic-0.36  $DEST/$VERSION

CMD ["/bin/bash"]

