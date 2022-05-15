#! /bin/bash
packer build -force -var-file=variables.json -var "git_sha=`git rev-parse --short HEAD`" deploy_exe.json
terraform apply -auto-approve -var "git_sha=`git rev-parse --short HEAD`"
