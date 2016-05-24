FROM centos:latest
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Dockerfile Version:   0.1
# Software:             -
# Software Version:     -
# Software Website:     -
# Description:          Base Centos7
##############################################################

RUN yum install -y epel-release ; \
    yum install -y ansible \
                   git     \
                   gcc     \
                   gcc-c++ \ 
                   make    \
                   net-tools ; \
    yum update  -y

CMD ["/bin/bash"]
