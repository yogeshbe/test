#Wordpress image
FROM ubuntu:latest
MAINTAINER yogeshbe@cybage.com
RUN apt-get update && apt-get install -y apache2 
RUN echo 'ServerName localhost' >> /etc/apache2/apache2.conf
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install mysql-server && apt-get install -yq php7.0 libapache2-mod-php7.0 php7.0-mysql
EXPOSE 8089
CMD ["apache2ctl","-D","FOREGROUND"]