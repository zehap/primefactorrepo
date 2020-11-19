FROM	ubuntu

LABEL	maintainer="zeha.yang@gmail.com"

RUN		apt-get update && apt-get upgrade -y && \
		apt-get -y install \
		nginx \
		vim \
		php-fpm 

COPY	srcs/default /
COPY	srcs/phptest.php /
COPY	srcs/init.sh /
EXPOSE	80
ENV PORT 8080
CMD		bash init.sh
