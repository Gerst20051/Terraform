#!/usr/bin/env sh

# [$]> brew install terraform

AWS_PROFILE=admin
AWS_REGION=us-east-1

# terraform plan -var profile=$AWS_PROFILE -var region=$AWS_REGION
terraform apply -var profile=$AWS_PROFILE -var region=$AWS_REGION

terraform graph | dot -Tsvg > graph.svg
