FROM centos:7
RUN yum install httpd git -y
RUN git clone https://github.com/BhaleraoNiranjan/phpcalculator.git
RUN cp ./javascript/index.html /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

