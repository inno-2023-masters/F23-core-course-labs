#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TERRAFORM_INVENTORY=`which terraform-inventory`
TF_STATE="$CURRENT_DIR/../../vk_cloud"   
"$TERRAFORM_INVENTORY" "$@" "$TF_STATE"
