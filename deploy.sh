#!/bin/bash
echo "---- Updating a Symfony 3.x project ----"

# Option "Composer" -c
composer="false"

while getopts c name
do
		case $name in
			c)
				composer="true"
				;;
		esac
done

# Reset the git for cancel unstaging modifications
git reset --hard origin/master

# Get the last code
git pull

# Update dependencies only if -c is "true"
if [ "$composer" == "true" ]
then
	composer update
fi

# Update database schema
bin/console doctrine:schema:update --force

# Clear the cache
bin/console cache:clear -e=prod

echo "---- Update done ----";
