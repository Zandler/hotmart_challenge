variable "cls_ecs" {
  description = "The cls_ecs"
}

variable "app-prd" {
  description = "Container name"
}

variable "vpc_id" {
  description = "The VPC id"
}

variable "availability_zones" {
  type        = "list"
  description = "Aws azs"
}

variable "pb_sb_1a" {
  description = "Public Subnet on us-east-1a"
}

variable "pb_sb_1b" {
  description = "Public Subnet on us-east-1b"
}

variable "app_sg_id" {
  description = "App Security Group"
}

variable "alb_sg_id" {
  description = "Application Load Balancer Security Group"
}

variable "ecs_sg_id" {
  description = "ECS Security Group"
}

variable "security_groups_ids" {
  type        = "list"
  description = "Security group lists"
}

variable "rails-default" {
  description = "Name of ECR Repository"
}

variable "alb_port" {
  description = "ALB listener port"
}

variable "container_port" {
  description = "ALB target port"
}

variable "container_number_to_run" {
  description = "Number of containers desired to run the application task"
}

variable "ecs_cpu_desired" {
  description = "Task CPU Limit"
}

variable "ecs_ram_desired" {
  description = "Task Memory Limit"
}
