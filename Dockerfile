FROM centos:centos7
MAINTAINER Balaji

RUN yum -y update
RUN yum -y install git vim
RUN yum -y install http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
RUN yum -y install maven tomcat mysql mysql-devel mysql-server mysql-utilities
RUN cd /var && git clone https://github.com/bravesmiles/TaskMaster1.1
CMD ['cd' '/var/TaskMaster1.1' '&&' 'mvn' 'clean' 'install' 'tomcat:run']
EXPOSE 8082
