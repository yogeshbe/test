#hello world image
FROM ubuntu:latest
MAINTAINER yogeshbe@cybage.com
RUN apt-get update && apt-get install -y apache2 
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install mysql-server

EXPOSE 8089
CMD ["apache2ctl","-D","FOREGROUND"]
