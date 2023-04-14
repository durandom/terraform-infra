# Terraform Infra

This repository contains the Terraform code for spinning up infrastructure.
The strucutre is inspired by [shared-terraform-files-different-envs.md](https://gist.github.com/jasonrogena/95b501bf665555831f052a60a246b4ce).

## modules

The modules are copies from exisiting terraform examples. They are just copied here.

## environments

The environments are the actual terraform code that uses the modules.


## state

Terraform state is stored in an S3 bucket.

```
aws s3api create-bucket --bucket tf-state-europe --region us-east-2 --create-bucket-configuration LocationConstraint=us-east-2
```