#!/usr/bin/env bash

set -x

# rosa create admin --cluster=$TF_VAR_cluster_name --p

rosa create idp --type=github --cluster=$TF_VAR_cluster_name \
     --organizations=rh-mobb --interactive

rosa grant user cluster-admin --user=durandom --cluster=$TF_VAR_cluster_name
