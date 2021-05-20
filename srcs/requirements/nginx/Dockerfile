FROM debian:buster

#TLSv1.3

WORKDIR		/var/www/html/

RUN			apt-get update && apt-get install -y \
			wget nginx openssl vim

COPY		conf/nginx.conf\
			/etc/nginx/sites-available/nginx.conf

RUN			rm /etc/nginx/sites-enabled/default && \
			ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf

RUN			mkdir /etc/nginx/ssl && chmod 700 /etc/nginx/ssl && \
			openssl req	-x509 -days 1 -nodes \
			-newkey rsa:2048 \
			-keyout /etc/nginx/ssl/ssl.key \
			-out /etc/nginx/ssl/ssl.crt \
			-subj "/C=RU/ST=Moscow/L=Moscow/O=21school/OU=student/\
			emailAddress=vwinfred@student.21-school.ru/CN=ft_server.com";

COPY		.sh \
			/usr/local/bin

CMD			[ "bash", ".sh" ]

EXPOSE  443