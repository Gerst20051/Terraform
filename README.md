# Terraform

`[$]> touch main.tf`

`[$]> terraform init`

`[$]> ./run.sh`

`[$]> terraform graph | dot -Tsvg > graph.svg`

`[$]> terraform plan -var profile=admin -var region=us-east-1`

`[$]> terraform apply -var profile=admin -var region=us-east-1`

`[$]> terraform destroy -var profile=admin -var region=us-east-1`

`[$]> curl http://$(terraform output --raw public_ip):8080`

`[$]> curl http://exampleinstance.hnswave.co:8080`
