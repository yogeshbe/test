#hello world image
FROM ubuntu:latest
MAINTAINER yogeshbe@cybage.com
RUN apt-get update && apt-get install -y apache2 
RUN { \
        echo mysql-community-server mysql-community-server/data-dir select ''; \
        echo mysql-community-server mysql-community-server/root-pass password 'root'; \
        echo mysql-community-server mysql-community-server/re-root-pass password 'root'; \
        echo mysql-community-server mysql-community-server/remove-test-db select false; \
    } | debconf-set-selections \
    && sudo apt-get install -y mysql-server   
EXPOSE 8089
CMD ["apache2ctl","-D","FOREGROUND"]
