terraform {
  backend "s3" {
    bucket = "tf-state-europe"
    key    = "development-infra-emea.tf"
    region = "us-east-2"
  }
}

module "emea-infra" {
  source = "../../modules/rosa/classic_sts/cluster"

  token = var.token
  cluster_name = var.cluster_name
  operator_role_prefix = "development-emea-infra"
  # rosa list ocm-roles -o json |jq '.[] | select(.Linked == "Yes") | .RoleName'
  account_role_prefix = "ManagedOpenShift"
}
