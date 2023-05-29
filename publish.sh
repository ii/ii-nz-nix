#!/usr/bin/env sh

nix build
s5cmd --endpoint-url http://$AWS_HOST:$PORT cp --exclude ".git/*" ii_nz_website/ s3://$BUCKET_NAME
rm result
