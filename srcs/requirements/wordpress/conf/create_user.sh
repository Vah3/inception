wp core install --url=localhost --title="my insception" --admin_user=vagevorg --admin_password=${DB_ROOT} --admin_email=admin@example.com
if wp user get Johnik >/dev/null 2>&1; then
    echo "User Johnik exists."
else
   wp user create Johnik john@example.com --role=subscriber --user_pass=pass
fi
wp user update "vagevorg" --user_pass="${DB_ROOT}" --skip-email
if wp user get "vagevorg" >/dev/null 2>&1; then
    echo "Logged in successfully as root."
else
    echo "Login failed. Please check your root credentials."
fi
wp theme activate twentytwentytwo
/usr/sbin/php-fpm8 -F
