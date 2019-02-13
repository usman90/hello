composer install
chmod -R 777 storage/
chmod -R 777 bootstrap/
mv .travis.env.yml .env
php artisan key:generate
exec php-fpm