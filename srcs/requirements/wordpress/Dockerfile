FROM		debian:buster

WORKDIR		/var/www/html/

RUN			apt-get update && apt-get install -y apt-utils \
			openssl wordpress default-mysql-server \
			php-fpm php-mysql php-mbstring vim

RUN			mv /usr/share/wordpress /var/www/html
COPY		./conf/wp-config.php \
			/var/www/html

