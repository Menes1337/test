#!/bin/sh

mkdir shopgate-cart-integration-sdk
rsync -av --exclude={.git,.gitignore,.php-cs-cache,.php-cs.dist,.travis.yml,build_release_package.sh,shopgate-cart-integration-sdk} ./ shopgate-cart-integration-sdk
zip -r shopgate-cart-integration-sdk.zip shopgate-cart-integration-sdk
