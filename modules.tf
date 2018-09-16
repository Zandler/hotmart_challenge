module "vpc" {
  source         = "./modules/vpc"
  cls_ecs   = "${var.cls_ecs}"
  alb_port       = "${var.alb_port}"
  container_port = "${var.container_port}"
}
module "ecs" {
  source              = "./modules/ecs"
  vpc_id              = "${module.vpc.vpc_id}"
  cls_ecs        = "${var.cls_ecs}"
  app-prd      = "${var.app-prd}"
  pb_sb_1a    = "${module.vpc.pb_sb_1a}"
  pb_sb_1b    = "${module.vpc.pb_sb_1b}"
  app_sg_id           = "${module.vpc.app_sg_id}"
  alb_sg_id           = "${module.vpc.alb_sg_id}"
  ecs_sg_id           = "${module.vpc.ecs_sg_id}"
  rails-default = "${var.rails-default}"
  alb_port            = "${var.alb_port}"
  container_port      = "${var.container_port}"
  container_number_to_run       = "${var.container_number_to_run}"
  ecs_cpu_desired    = "${var.ecs_cpu_desired}"
  ecs_ram_desired = "${var.ecs_ram_desired}"

  security_groups_ids = [
    "${module.vpc.app_sg_id}",
    "${module.vpc.alb_sg_id}",
    "${module.vpc.ecs_sg_id}",
  ]

  availability_zones = [
    "${module.vpc.pb_sb_1a}",
    "${module.vpc.pb_sb_1b}",
  ]
}

module "pipeline" {
  source                = "./modules/pipeline"
  cls_ecs          = "${var.cls_ecs}"
  app-prd        = "${var.app-prd}"
  rails-default   = "${var.rails-default}"
  github_repo  = "${var.github_repo}"
  github_repo_name   = "${var.github_repo_name}"
  github_branch = "${var.github_branch}"
  repository_url        = "${module.ecs.repository_url}"
  app_service_name      = "${module.ecs.service_name}"
  vpc_id                = "${module.vpc.vpc_id}"
  region                = "${var.aws_region}"

  subnet_ids = [
    "${module.vpc.pb_sb_1a}",
    "${module.vpc.pb_sb_1b}",
  ]
}
