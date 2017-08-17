#!/bin/bash

set -e

git checkout $TRAVIS_BRANCH
git config user.name "Travis CI"
git config user.email "$COMMIT_AUTHOR_EMAIL"
git status
./php-cs-fixer fix --config=.php-cs.dist --cache-file=.php-cs.cache --diff --verbose .
git add .
git commit -m"clean code style!"
git push
