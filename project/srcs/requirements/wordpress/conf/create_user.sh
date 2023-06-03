wp core install --url=YOUR_SITE_URL --title="my insception" --admin_user=admin --admin_password=${DB_ROOT} --admin_email=admin@example.com
wp user create johnik4 john4@example.com --role=subscriber --user_pass=pass
/usr/sbin/php-fpm8 -F
