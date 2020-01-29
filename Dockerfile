FROM centos:7
RUN yum install httpd git -y
RUN git clone https://github.com/abhivaidya07/javascript.git
RUN cp ./javascript/index.html /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

