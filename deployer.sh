set -e

echo "Deploying application ..."

#enter maintance mode
(php artisan down --message 'the app is being (quickly) updated. pelase try again in a minute') || true

# update codebase
git pull origin master

#exit maintance mode
php artisan up


echo "Application deployes"
