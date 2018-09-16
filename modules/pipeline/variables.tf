variable "cls_ecs" {
  description = "The cls_ecs"
}

variable "rails-default" {
  description = "ECR Repository name"
}

variable "app_service_name" {
  description = "Service name"
}

variable "github_repo" {
  description = "Owner from Repository"
}

variable "github_repo_name" {
  description = "Name of repository"
}

variable "github_branch" {
  description = "Build branch aka Master"
}

variable "vpc_id" {
  description = "The VPC id"
}

variable "repository_url" {
  description = "The url of the ECR repository"
}

variable "subnet_ids" {
  type        = "list"
  description = "Subnet ids"
}

variable "region" {
  description = "The region to use"
}

variable "app-prd" {
  description = "Container name"
}
