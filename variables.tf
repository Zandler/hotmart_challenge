# Script with all variables that you need
# Author. Zandler Oliveira
# Date. 13/09/2018
# Email. zandler.oliveira@gmail.com

variable "cls_ecs" {
  description = "Name of the cluster"
} 
variable "rails-default" {
  description = "ECR Repo name"
}
variable "app-prd" {
  description = "Name of container (not application or service)"
}
variable "container_number_to_run" {
  description = "How much container need to run at same time"
}
variable "ecs_cpu_desired" {
  description = "Get Cpu. don't forget: it's java! :)"
}
variable "ecs_ram_desired" {
  description = "Ram its need to be stable"
}
variable "alb_port" {
  description = "Public port"
}
variable "container_port" {
  description = "app port"
}
variable "github_repo" {
  description = "Repo in github"
}
variable "github_repo_name" {
  description = "Project on github"
}
variable "github_branch" {
  description = "Github Project Branch"
}
variable "aws_region" {
  description = "AWS VPC Region"
}
variable "aws_access_key" {  
}
variable "aws_secret_key" {
 
}

variable "domain" {
 description = "public domain" 
}



