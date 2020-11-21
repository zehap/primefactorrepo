FROM	ubuntu

LABEL	maintainer="zeha.yang@gmail.com"

RUN		apt-get update && apt-get upgrade -y && \
		apt-get -y install \
		nginx \
		vim \
		php-fpm 
RUN		rm /etc/nginx/sites-available/default
ADD	srcs/default /etc/nginx/sites-available
ADD	srcs/phptest.php /var/www/html
RUN		chown -R www-data /var/www/*
RUN		chmod -R 755 /var/www/*
RUN		service nginx start
RUN		service php7.4-fpm start
EXPOSE	80
ENTRYPOINT	["/var/www/html/phptest.php"]
