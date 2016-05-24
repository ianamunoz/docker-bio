FROM sglim2/centos7-systemd-httpd
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Dockerfile Version:   0.1
# Software:             apache2 & php
# Software Version:     -
# Software Website:     -
# Description:          apache2 with php
##############################################################

RUN yum -y update ; \ 
    yum -y install  \
        php-mysql   \
        php-mcrypt  \
        php-gd      \
        php-curl    \
        php-pear ;  \
    yum clean all;  \
EXPOSE 80
CMD ["/usr/sbin/init"]
