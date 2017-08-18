#!/bin/sh

mkdir shopgate-cart-integration-sdk
rsync -av --progress * shopgate-cart-integration-sdk --exclude shopgate-cart-integration-sdk
zip -r shopgate-cart-integration-sdk.zip shopgate-cart-integration-sdk
