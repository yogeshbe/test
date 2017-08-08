#hello world image
FROM ubuntu:latest
MAINTAINER yogeshbe@cybage.com
RUN apt-get update && apt-get install -y apache2 
EXPOSE 8089
CMD ["apache2ctl","-D","FOREGROUND"]


