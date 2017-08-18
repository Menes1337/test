#!/bin/bash
set -e # Exit with nonzero exit code if anything fails

SOURCE_BRANCH="master"
TARGET_BRANCH="gh-pages"

echo $TRAVIS_BRANCH >&2;

# tags shouldn't fix stuff
if [ "$TRAVIS_TAG" ]; then
    echo "Skipping"
    exit 0
fi

# Save some useful information
REPO=`git config remote.origin.url`
SSH_REPO=${REPO/https:\/\/github.com\//git@github.com:}
SHA=`git rev-parse --verify HEAD`

git config user.name "Travis CI"
git config user.email "travis@travis-ci.org"

# If there are no changes to the compiled out (e.g. this is a README update) then just bail.
if git diff --quiet; then
    echo "No changes to the output on this push; exiting."
    exit 0
fi

# Commit the "changes", i.e. the new version.
# The delta will show diffs between new and old versions.
git add -A .
git commit -m "Deploy to GitHub}"

git remote add origin-push https://${GH_TOKEN}@github.com/Menes1337/test.git > /dev/null 2>&1
git push --set-upstream origin-push $TRAVIS_BRANCH

