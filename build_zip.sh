#!/bin/sh

mkdir $TRAVIS_BUILD_DIR/shopgate-cart-integration-sdk
#cp ./* shopgate-cart-integration-sdk -R
rsync -av --progress * $TRAVIS_BUILD_DIR/shopgate-cart-integration-sdk --exclude shopgate-cart-integration-sdk
zip -r shopgate-cart-integration-sdk.zip $TRAVIS_BUILD_DIR/shopgate-cart-integration-sdk
