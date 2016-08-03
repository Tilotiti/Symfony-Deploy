#!/bin/bash
echo "---- Updating a Symfony 3.x project ----"

# Reset the git for cancel unstaging modifications
git reset --hard origin/master

# Get the last code
git pull

# Update dependencies
composer update

# Update database schema
bin/console doctrine:schema:update --force

# Clear the cache
bin/console cache:clear -e=prod

echo "---- Update done ----";
