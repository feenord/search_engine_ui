#! /bin/bash
yc compute image delete crawler-ui
packer build -force -var-file=variables.json deploy_exe.json
terraform apply -auto-approve
