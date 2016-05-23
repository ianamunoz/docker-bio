FROM sglim2/centos7-systemd
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

RUN yum -y install httpd; \
    yum clean all;        \
     systemctl enable httpd.service
EXPOSE 80
CMD ["/usr/sbin/init"]
