#!/bin/sh

mkdir shopgate-cart-integration-sdk
#cp ./* shopgate-cart-integration-sdk -R
rsync -av --progress . /shopgate-cart-integration-sdk --exclude shopgate-cart-integration-sdk
zip shopgate-cart-integration-sdk
