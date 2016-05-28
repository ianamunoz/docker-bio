FROM sglim2/centos7-systemd
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Dockerfile Version:   0.1
# Software:             apache2
# Software Version:     -
# Software Website:     -
# Description:          Apache web server
##############################################################

RUN yum -y install httpd; \
    yum clean all;        \
     systemctl enable httpd.service
EXPOSE 80
CMD ["/usr/sbin/init"]
