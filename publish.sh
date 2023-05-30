#!/usr/bin/env sh

nix build
s5cmd --endpoint-url http://$AWS_HOST:$PORT cp result/ s3://$BUCKET_NAME
rm result
