FROM centos:7
RUN yum -y install httpd php git
RUN git clone https://github.com/abhivaidya07/javascript.git
RUN cp ./phpcalculator/index.php /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
