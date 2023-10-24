#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TERRAFORM_INVENTORY=`which terraform-inventory`
TF_STATE="$CURRENT_DIR/../../terraform/cloud"    # <<== relative path to dir with .tfstate
"$TERRAFORM_INVENTORY" "$@" "$TF_STATE"