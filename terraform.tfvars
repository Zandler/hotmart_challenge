# Script with all variables that you need
# Author. Zandler Oliveira
# Date. 13/09/2018
# Email. zandler.oliveira@gmail.com
# put this file in .gitignore after clone

# ECS / ECR 
cls_ecs                   = "app-prd"
rails-default             = "app-prd"
app-prd                   = "app-prd"
container_number_to_run   = 3
ecs_cpu_desired           = 256
ecs_ram_desired           = 512
alb_port                  = 80
container_port            = 3000

# Git
github_repo               = "oliveiraZandler"
github_repo_name          = "linux-dash"
github_branch             = "master"

# AWS Creds
aws_region                = "us-east-1"
aws_access_key            = "PUT_ACCESS_KEY_HERE"
aws_secret_key            = "PUT_SECRET_KEY_HERE"
 
 #domain
 domain = "DOMAIN_HERE"