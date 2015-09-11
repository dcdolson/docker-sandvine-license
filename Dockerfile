FROM centos:centos7
MAINTAINER Don Bowman "don.waterloo@gmail.com"

#RUN yum -y update; yum clean all
RUN yum -y install sysvinit-tools

ADD svlicenseserver-1.00-0001.el7.x86_64.rpm /tmp/svlicenseserver-1.00-0001.el7.x86_64.rpm
RUN rpm -i /tmp/svlicenseserver-1.00-0001.el7.x86_64.rpm

VOLUME ["/var/sandvine/license", "/var/sandvine/license"]
EXPOSE 6200

ADD run_lmx /sbin/run_lmx
CMD ["/sbin/run_lmx"]
