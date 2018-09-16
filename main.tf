# Script for deploy aws ecs
# Author. Zandler Oliveira
# Date. 13/09/2018
# Email. zandler.oliveira@gmail.com
#
# This is only do set provider
# All things are in modules folder and variables.tfvras
# After clone this repos uncomment in.gitignore fisrt line "*.tfvars"

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "${var.aws_region}"

}
