FROM debian:buster

WORKDIR		/var/www/html/

RUN		apt-get update && apt-get install -y \
		openssl wordpress php-fpm vim

RUN		mv /usr/share/wordpress /var/www/html
COPY	./conf/wp-config.php \
		/var/www/html/wordpress


# RUN		rm /var/www/html/index.html && \
# 		ln -s /var/www/html/index.php /var/www/html/wordpress/index.php

RUN		mv /var/www/html/wordpress/index.php /var/www/html/
RUN		mv /var/www/html/index.php /var/www/html/wordpress/
