FROM centos:7
RUN yum update -z && yum install httpd -z && yum clean all

COPY index.html /var/www/html/
EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]




