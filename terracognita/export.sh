#!/usr/bin/env sh

# [$]> brew install terracognita

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1

terracognita aws --hcl aws --aws-access-key $AWS_ACCESS_KEY_ID --aws-secret-access-key $AWS_SECRET_ACCESS_KEY --aws-default-region $AWS_DEFAULT_REGION
