rm /etc/nginx/sites-available/default
mv default /etc/nginx/sites-available/
mv phptest.php /var/www/html
chown -R www-data /var/www/*
chmod -R 755 /var/www/*
service nginx start
service php7.4-fpm start
bash
