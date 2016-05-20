FROM sglim2/centos7-systemd
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>
LABEL Vendor="sglim2"
LABEL License=GPLv2

##############################################################
# Dockerfile Version:   0.1
# Software:             apache2 & php
# Software Version:     -
# Software Website:     -
# Description:          apache2 with php
##############################################################

RUN yum -y update ; \ 
    yum -y install  \
        curl        \
        httpd       \
        php-mysql   \
        php-mcrypt  \
        php-gd      \
        php-curl    \
        php-pear ;  \
    yum clean all;  \
    systemctl enable httpd.service

EXPOSE 80
CMD ["/usr/sbin/init"]
