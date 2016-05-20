FROM centos:latest
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>
LABEL Vendor="sglim2"
LABEL License=GPLv2

RUN yum install -y epel-release ; \
    yum install -y ansible \
                   gcc     \
                   gcc-c++ \ 
                   make    \
                   net-tools ; \
    yum update  -y

CMD ["/bin/bash"]
