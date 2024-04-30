#!/bin/bash

# Find directories containing .tf files and run Terraform commands
find . -name '*.tf' -print0 | xargs -0 -n1 dirname | sort -u | while read dir; do
  pushd "$dir"
  echo "Running Terraform in $dir"
  terraform init
  terraform apply -auto-approve
  popd
done
